package br.com.liloca.admin

import grails.gorm.DetachedCriteria
import groovy.transform.ToString

import org.apache.commons.lang.builder.HashCodeBuilder

@ToString(cache=true, includeNames=true, includePackage=false)
class GerenciadorRole implements Serializable {

	private static final long serialVersionUID = 1

	Gerenciador gerenciador
	Role role

	GerenciadorRole(Gerenciador u, Role r) {
		gerenciador = u
		role = r
	}

	@Override
	boolean equals(other) {
		if (!(other instanceof GerenciadorRole)) {
			return false
		}

		other.gerenciador?.id == gerenciador?.id && other.role?.id == role?.id
	}

	@Override
	int hashCode() {
		def builder = new HashCodeBuilder()
		if (gerenciador) builder.append(gerenciador.id)
		if (role) builder.append(role.id)
		builder.toHashCode()
	}

	static GerenciadorRole get(long gerenciadorId, long roleId) {
		criteriaFor(gerenciadorId, roleId).get()
	}

	static boolean exists(long gerenciadorId, long roleId) {
		criteriaFor(gerenciadorId, roleId).count()
	}

	private static DetachedCriteria criteriaFor(long gerenciadorId, long roleId) {
		GerenciadorRole.where {
			gerenciador == Gerenciador.load(gerenciadorId) &&
			role == Role.load(roleId)
		}
	}

	static GerenciadorRole create(Gerenciador gerenciador, Role role, boolean flush = false) {
		def instance = new GerenciadorRole(gerenciador, role)
		instance.save(flush: flush, insert: true)
		instance
	}

	static boolean remove(Gerenciador u, Role r, boolean flush = false) {
		if (u == null || r == null) return false

		int rowCount = GerenciadorRole.where { gerenciador == u && role == r }.deleteAll()

		if (flush) { GerenciadorRole.withSession { it.flush() } }

		rowCount
	}

	static void removeAll(Gerenciador u, boolean flush = false) {
		if (u == null) return

		GerenciadorRole.where { gerenciador == u }.deleteAll()

		if (flush) { GerenciadorRole.withSession { it.flush() } }
	}

	static void removeAll(Role r, boolean flush = false) {
		if (r == null) return

		GerenciadorRole.where { role == r }.deleteAll()

		if (flush) { GerenciadorRole.withSession { it.flush() } }
	}

	static constraints = {
		role validator: { Role r, GerenciadorRole ur ->
			if (ur.gerenciador == null || ur.gerenciador.id == null) return
			boolean existing = false
			GerenciadorRole.withNewSession {
				existing = GerenciadorRole.exists(ur.gerenciador.id, r.id)
			}
			if (existing) {
				return 'userRole.exists'
			}
		}
	}

	static mapping = {
		id composite: ['gerenciador', 'role']
		version false
	}
}
