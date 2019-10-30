<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!doctype html>
<html lang="ko">
  <head>
    <meta charset="EUC-KR">

    <title>Index</title>

 <!-- core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
 
 <!-- �ش� ������ CSS -->
    <link href="/view/checkout/form-validation.css" rel="stylesheet">
 
 <!-- ��� �� -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand h3 font-italic" href="index.html">Beer Stroage

</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="show.jsp">���ֺ���
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="compare.jsp">���ֺ�</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="rank.jsp">���ַ�ŷ</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="map.jsp">���ֺ� ���ָ���</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="brew.jsp">������ ����</a>
          </li>
          <li class="nav-item">
            <a class="nav-link font-weight-bold font-italic" href="login.jsp">LogIn</a>
          </li>
          <li class="nav-item">
            <a class="nav-link font-weight-bold font-italic" href="join.jsp">Join</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
 </head>
  <!-- ��� �� �� -->



<div style ="margin:70px; padding:2px; font-weight:bold;">
    <div class="container">
      <h1>ȸ�� ����</h1>
    </div>
    <div style="padding:10px;">

      <form class="needs-validation " novalidate>
        <div class="col-md-4 mb-3">
          <label for="id">id�� �Է��ϼ���</label>
          <input type="text" class="form-control" id="id" placeholder="�������� ������ �ּ���" value="" required>
          </div>

          <div class="col-md-4 mb-3">
            <label for="pw">pw�� �Է��ϼ���</label>
            <input type="text" class="form-control" id="pw" placeholder="����, ���� ȥ�� ���� ����" value="" required>
            </div>

            <div class="col-md-4 mb-3">
              <label for="pw">pw Ȯ��</label>
              <input type="text" class="form-control" id="pw" placeholder="��й�ȣ Ȯ��" value="" required>
            </div>
            <div class="col-md-4 mb-3">
              <button class="btn btn-secondary" type="submit">Ȯ��</button>
              </div>

        </div>

  <div class="col-md-4 mb-3">
            <label for="name">�̸��� �Է��ϼ���</label>
            <input type="text" class="form-control" id="name" placeholder="ȫ�浿" value="" required>
            </div>



   <div class="container">
  <div class="col-md-4 mb-3">
<label for="sex">������ �Է��ϼ���<span class="text-muted"></span></label>
   <span class="col-md-4 mb-3 custom-radio">
            <input id="sex_m" name="sexMethod" type="radio" class="custom-control-input" checked required>
            <label class="col-md-8 custom-control-label" for="male">��</label>
          </span>
         <span class="col-md-4 mb-3 custom-radio">
            <input id="sex_f" name="sexMethod" type="radio" class="custom-control-input" required>
            <label class="col-md-8 custom-control-label" for="female">��</label>
         <span> </div>
            </div>
<div style="padding:5px;"/>



<div class="col-md-4 mb-3">
          <label for="email">�������<span class="text-muted"></span></label>
          <input type="birthday" class="form-control" id="birthday" placeholder="ex)991203">
            <span class="invalid-feedback" style="width: 100%;">
              ������ ���� ������ �ּ���.
          </div>
<div style="padding:5px;"/>

<div class="col-md-4 mb-3">
          <label for="email">Email <span class="text-muted"></span></label>
          <input type="email" class="form-control" id="email" placeholder="aBc@gmail.com">
        </div>
<div style="padding:5px;"/>

<div class="col-md-4 mb-3">
          <label for="address">�ּ�</label>
          <input type="text" class="form-control" id="address" placeholder="����� ���α� ȿ�ڵ�" required>
        </div>
 <div style="padding:5px;">
</div>

<div class="col-md-4 mb-3">
        <div class="row">

            <label for="country">����</label>
            <select class="custom-select d-block w-100" id="job" required>
              <option value="">����</option>
              <option>�л�</option>
	 <option>��������</option>
	 <option>IT</option>
	 <option>�ڿ���</option>
	 <option>������</option>
	 <option>��Ÿ</option>
           </select>
          </div>
          </div>
        <hr class="mb-4">

      </form>

   <button class="btn btn-warning" type="submit">���� �Ϸ�</button>
  </body>
</html>
