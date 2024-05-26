
decrement_step <- function(step) {

  if(step <= 1) {
    return(0)
  }

  return(step - 1)

}

increment_step <- function(plot_data_object, step) {

  if(step == length(plot_data_object$steps)) {
    return(length(plot_data_object$steps))
  }

  return(step + 1)

}

decrement_step_deepness <- function(step_deepness) {

  if(step_deepness <= 1) {
    return(0)
  }

  return(step - 1)

}

increment_step_deepness <- function(plot_data_object, step, step_deepness) {

  if(step == 0) {
    # cannot increment deepness for initial state
    return(step_deepness)
  }

  if(!"steps" %in% names(attributes(plot_data_object$steps[step]))) {
    # don't increment if deepness is max
    return(step_deepness)
  }

  return(step_deepness + 1)

}

get_plot_data_at_coords <- function(plot_data_object, coords) {

  res <- NULL
  curr_obj <- plot_data_object

  for(i in seq_along(coords)) {

    step <- coords[i]

    if(step == 0) {
      return(curr_obj$input)
    }

    if(step <= length(curr_obj$steps)) {
      curr_obj <- curr_obj$steps[step]
    }

  }

  return(res)

}
