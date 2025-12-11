``` css 
/* valid */
._user-name {
}

/* valid */
.-user-name {
}

/* invalid */
.1user-name {
}

/* invalid */
.@user-name {
}

/* invalid */
.user@name {
}

/* valid */
._user10name {
}

/* valid */
.u {
}