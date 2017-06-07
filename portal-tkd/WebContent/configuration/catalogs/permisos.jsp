<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Catalogo</title>
</head>
<body>
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                      <section class="panel">
                          <header class="panel-heading">
                             Permisos a rol
                          </header>
                          <div class="panel-body">
                          	<div class="form">
                                  <form class="form-validate form-horizontal" id="feedback_form" method="get" action="">
                                      <div class="form-group ">
                                          <label for="cname" class="control-label col-lg-2">Full Name <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                              <input class="form-control" id="cname" name="fullname" minlength="5" type="text" required />
                                          </div>
                                      </div>
                                      <div class="form-group ">
                                          <label for="cemail" class="control-label col-lg-2">E-Mail <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                              <input class="form-control " id="cemail" type="email" name="email" required />
                                          </div>
                                      </div>
                                      <div class="form-group ">
                                          <label for="curl" class="control-label col-lg-2">Website</label>
                                          <div class="col-lg-10">
                                              <input class="form-control " id="curl" type="url" name="url" />
                                          </div>
                                      </div>
                                      <div class="form-group ">
                                          <label for="cname" class="control-label col-lg-2">Subject <span class="required">*</span></label>
                                          <div class="col-lg-10">
                                              <input class="form-control" id="subject" name="subject" minlength="5" type="text" required />
                                          </div>
                                      </div>                                      
                                      <div class="form-group ">
                                          <label for="ccomment" class="control-label col-lg-2">Feedback</label>
                                          <div class="col-lg-10">
                                              <textarea class="form-control " id="ccomment" name="comment" required></textarea>
                                          </div>
                                      </div>
                                      <div class="form-group">
                                          <div class="col-lg-offset-2 col-lg-10">
                                              <button class="btn btn-primary" type="submit">Save</button>
                                              <button class="btn btn-default" type="button">Cancel</button>
                                          </div>
                                      </div>
                                  </form>
                              </div>
                          </div>
                          <table class="table table-striped table-advance table-hover">
                           <tbody>
                              <tr>
                                 <th><i class="icon_profile"></i> Full Name</th>
                                 <th><i class="icon_calendar"></i> Date</th>
                                 <th><i class="icon_mail_alt"></i> Email</th>
                                 <th><i class="icon_pin_alt"></i> City</th>
                                 <th><i class="icon_mobile"></i> Mobile</th>
                                 <th><a class="btn btn-primary" href="#"><i class="icon_plus_alt2"></i>Agregar</a></th>
                              </tr>
                              <tr>
                                 <td>Angeline Mcclain</td>
                                 <td>2004-07-06</td>
                                 <td>dale@chief.info</td>
                                 <td>Rosser</td>
                                 <td>176-026-5992</td>
                                 <td>
                                  <div class="btn-group">
                                      <a class="btn btn-success" href="#"><i class="icon_check_alt2"></i></a>
                                      <a class="btn btn-danger" href="#"><i class="icon_close_alt2"></i></a>
                                  </div>
                                  </td>
                              </tr>
                              <tr>
                                 <td>Sung Carlson</td>
                                 <td>2011-01-10</td>
                                 <td>ione.gisela@high.org</td>
                                 <td>Robert Lee</td>
                                 <td>724-639-4784</td>
                                 <td>
                                  <div class="btn-group">
                                      <a class="btn btn-success" href="#"><i class="icon_check_alt2"></i></a>
                                      <a class="btn btn-danger" href="#"><i class="icon_close_alt2"></i></a>
                                  </div>
                                  </td>
                              </tr>
                                                           
                           </tbody>
                        </table>
                      </section>
				</div>
</body>
</html>