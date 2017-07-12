<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<div class="row">
        <div class="col-xs-12">
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">#${category.category_name }</h3> 

              <div class="box-tools">
                <div class="input-group input-group-sm" style="width: 150px;" >
                  <input type="text" name="table_search" class="form-control pull-right" placeholder="Search">

                  <div class="input-group-btn">
                    <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
                  </div>
                </div>
              </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body table-responsive no-padding">
              <table class="table table-hover">
                <tbody>
                <tr class="info">
					<th>Category </th>
                  <th>Title</th> 
                  <th>User</th>
                  <th>Date</th> 
                </tr>
         		<c:forEach items="${boardList }" var="boardVO" varStatus="status">
                <tr>
                	<td>#${category.category_name }</td>
                	<td>${boardVO.board_title }</td>
                	<td>${boardVO.user_id }</td>
                	<td>${boardVO.board_write_date }</td>
                </tr>
				</c:forEach>
              </tbody>
              </table>

            </div>
            <!-- /.box-body -->
          </div>
              <a class="btn btn-default btn-lg" href="/board/boardWriteForm">Write</a>
          <!-- /.box -->
        </div>
      </div>