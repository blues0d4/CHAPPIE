
const mysql = require('mysql');

var sql = '';
var progressSql1 = '';
var progressSql2 = '';
var progressAll = '';
var progressPart = '';
var category_id_param = '';
var selectCategoryName = '';
var selectCategoryId = '';

var params = '';
var params2 = [];
var conn = mysql.createConnection({
   host : '218.144.130.3',
  //  host : 'bass.iptime.org',
   user : 'root',
   password : 'syteam1111',
   database : 'syteam',
   port : 4668
 });

var query = '';
var searchNickname = ''; //email로 인해 찾은 nickname

conn.connect();

exports.helloHttp = function helloHttp (req, res) {
  var action = req.body.result['action'];
  var nickname = req.body.result.parameters['nickname'];
  var user_id = req.body.result.parameters['user_id'];
  var date = req.body.result.parameters['date'];
  var resolvedQuery = req.body.result['resolvedQuery'];
  var category_name_param = req.body.result.parameters['category_name'];

  var nowProjectName = '';
  var nowProjectId = '';
  var nowUserNickName = '';


  function todoFunction(callback){  //요짱의 할일을 알려줘
    sql = 'SELECT T.TODO_LIST FROM TODO_LIST_TABLE T, TODO_MEMBER_TABLE M WHERE T.TODO_NO = M.TODO_NO AND M.MEMBER_NICKNAME = ? AND PROJECT_ID = ? AND TODO_COMPLETE= 0'
    params2 = [nickname, nowProjectId];
      conn.query(sql, params2, function(err, rows, fields){
           if(err){
             console.log(err);
             response = 'DB연결 실패ㅠㅠ' + err;
            //  app.tell('쿼리실패' + query);
             callback();
           } else{
                query = '';
                for(var i=0; i<rows.length;i++){
             				    console.log('로우즈 ' + rows[i].TODO_LIST);
               				  if(i == rows.length - 1){
               					      query += ' - ' + rows[i].TODO_LIST + '<br>';
               				  }
               				  else{
               					      query += ' - ' + rows[i].TODO_LIST + '<br>';
               				  }
             		}
              if(query != ''){
                response = nickname + '의 할일은 아래와 같습니다.<br>'+ query ;
              }else {
                response = nickname + '의 할일은 없습니다.';
              }
              callback();
           }
           response = 'test';
     });
   }




  function todoFunction(callback){  //요짱의 할일을 알려줘
    sql = 'SELECT T.TODO_LIST FROM TODO_LIST_TABLE T, TODO_MEMBER_TABLE M WHERE T.TODO_NO = M.TODO_NO AND M.MEMBER_NICKNAME = ? AND PROJECT_ID = ? AND TODO_COMPLETE= 0'
    params2 = [nickname, nowProjectId];
      conn.query(sql, params2, function(err, rows, fields){
           if(err){
             console.log(err);
             response = 'DB연결 실패ㅠㅠ' + err;
            //  app.tell('쿼리실패' + query);
             callback();
           } else{
                query = '';
                for(var i=0; i<rows.length;i++){
             				    console.log('로우즈 ' + rows[i].TODO_LIST);
               				  if(i == rows.length - 1){
               					      query += ' - ' + rows[i].TODO_LIST + '<br>';
               				  }
               				  else{
               					      query += ' - ' + rows[i].TODO_LIST + '<br>';
               				  }
             		}
              if(query != ''){
                response = nickname + '의 할일은 아래와 같습니다.<br>'+ query ;
              }else {
                response = nickname + '의 할일은 없습니다.';
              }
              callback();
           }
           response = 'test';
     });
   }

   function projectmemberListFunction(callback){ //프로젝트
      conn.query(sql, params, function(err, rows, fields){
          if(err){
            console.log(err);
            response = 'DB연결 실패ㅠㅠ' + err;
            callback();
          } else{
            query = '';
            for(var i=0; i<rows.length;i++){
                if(i == rows.length - 1){
                    query += ' - ' + rows[i].MEMBER_NICKNAME + '<br>';
                } else{
                    query += ' - ' + rows[i].MEMBER_NICKNAME + '<br>';
                }
            }
            if(query != ''){
              response = params + ' 프로젝트의 멤버는 아래와 같습니다.<br>' + query + '멤버를 추가하시겠습니까?';
            }else{
              response = params + ' 프로젝트의 멤버는 없습니다. 멤버를 추가하시겠습니까?'
            }
            callback();
          }
      });
   }

   function searchNicknameFuction(callback){
      var searchSQL = 'SELECT USER_NAME FROM USER_TABLE WHERE USER_ID = ?';
      params = user_id; //통째로 메일 받아올 수 있도록 고쳐야함(user say)
      conn.query(searchSQL, params, function(err, rows, fields){
          if(err){
            console.log(err);
            response = 'DB연결 실패ㅠㅠ' + err;
            callback();
          } else{
            searchNickname = rows[0].USER_NAME;
            // response = searchNickname;
            callback();
          }

      });
   }

   function projectinputMemberFunction(callback){ //email입력
     sql = 'INSERT INTO MEMBER_TABLE VALUES(?, ?, ?, ?, null)';
     params2 = [nowProjectId, searchNickname, 'n', user_id];
     conn.query(sql, params2, function(err, rows, fields){
         if(err){
           console.log(err);
           response = 'DB연결 실패ㅠㅠ' + err;
           callback();
         } else{
           response = searchNickname + '('+ user_id + ') 님이 추가 되었습니다. 더 추가하시겠습니까?';
           //없으면 아예 못알아 들음. userid도 intent, entity일일히 입력해야.
           callback();
         }
   });
 }

   function todowhodateFunction(callback){ //오늘 ㅇㅇ가 할일을 알려줘

     sql = 'SELECT TODO_LIST FROM TODO_LIST_TABLE L, TODO_MEMBER_TABLE M WHERE ? BETWEEN TODO_START_DATE AND TODO_END_DATE AND L.TODO_NO = M.TODO_NO AND M.MEMBER_NICKNAME = ? AND L.PROJECT_ID = ? AND TODO_COMPLETE = 0';
     params2 = [date, nickname, nowProjectId];
     conn.query(sql, params2, function(err, rows, fields){
         if(err){
           console.log(err);
           response = 'DB연결 실패ㅠㅠ' + err;
           callback();
         } else{
           query = '';
           for(var i=0; i<rows.length;i++){
             if(i == rows.length - 1){
                 query += ' - ' + rows[i].TODO_LIST;
             } else{
                 query += ' - ' + rows[i].TODO_LIST + '<br>';
             }
           }
            if(query != ''){
              response = '현 프로젝트의 '+ nickname + '님이 '+ date + '에 할일은 아래와 같습니다. <br>' + query;
            }else {
              response = '현 프로젝트의 ' + nickname + '님의 ' + date + '에 할일은 없습니다.';
            }
            callback();
         }
    });
   }

   function tododelayallFunction(callback){ // 지연된 일을 알려줘 - 전체
      sql = 'SELECT TODO_LIST FROM TODO_LIST_TABLE WHERE NOW() > TODO_END_DATE AND TODO_COMPLETE = 0 AND PROJECT_ID = ?'
      params = nowProjectId;
      conn.query(sql, params, function(err, rows, fields){
        if(err){
          console.log(err);
          response = 'DB연결 실패ㅠㅠ' + err;
          callback();
        } else{
           query = '';
           for(var i=0; i<rows.length;i++){
             if(i == rows.length - 1){
                 query += ' - ' + rows[i].TODO_LIST;
             } else{
                 query += ' - ' + rows[i].TODO_LIST + '<br>';
             }
           }
           if(query != ''){
             response = '현 프로젝트의 지연된 일은 아래와 같습니다. <br>'+ query ;
           }else {
             response = '현 프로젝트의 지연된 일이 없습니다.';
           }
          callback();
        }
      });
   }

   function tododelaywhoFunction(callback){ //지연된 일을 알려줘 - nickname
     sql = 'SELECT T.TODO_LIST FROM TODO_LIST_TABLE T, TODO_MEMBER_TABLE M WHERE NOW() > TODO_END_DATE AND TODO_COMPLETE = 0 AND T.TODO_NO = M.TODO_NO AND M.MEMBER_NICKNAME = ? AND T.PROJECT_ID = ?'; //TEMP 프로젝트 넣어야(카테고리, 프로젝트?)
     params2 = [nickname, nowProjectId];
     conn.query(sql, params2, function(err, rows, fields){
       if(err){
         console.log(err);
         response = 'DB연결 실패ㅠㅠ' + err;
         callback();
       } else{
         query = '';
         for(var i=0; i<rows.length;i++){
           if(i == rows.length - 1){
               query += ' - ' + rows[i].TODO_LIST;
           } else{
               query += ' - ' + rows[i].TODO_LIST + '<br>';
           }
         }
         if(query != ''){
           response = '현 프로젝트의 ' + nickname + '님의 지연된 일은 아래와 같습니다. <br>' + query;
         }else {
           response = '현 프로젝트의 ' + nickname + '님의 지연된 일이 없습니다.';
         }
        callback();
       }
     });
   }

   function progressAllFunction(callback){
        progressSql1 = 'SELECT COUNT(*) AS ALLC FROM TODO_LIST_TABLE WHERE PROJECT_ID = ?';
        params = nowProjectId;
        conn.query(progressSql1, params, function(err, rows, fields){
          if(err){
            console.log(err);
            response = 'DB연결 실패ㅠㅠ' + err;
            callback();
          } else{
              progressAll = rows[0].ALLC;
              // response = progressAll;
              callback();
          }
        });
    }

    function progressPartFunction(callback){
        progressSql2 = 'SELECT COUNT(*) AS PARTC FROM TODO_LIST_TABLE WHERE PROJECT_ID = ? AND TODO_COMPLETE=1';
        params = nowProjectId;
        conn.query(progressSql2, params, function(err, rows, fields){
          if(err){
            console.log(err);
            response = 'DB연결 실패ㅠㅠ' + err;
            callback();
          } else{
              progressPart = rows[0].PARTC;
              callback();
          }
        });
    }

    function categoryListFunction(callback){ // 진척도 - 카테고리
      var category_name = '';
      var progress = '';
      sql = 'SELECT CA.CATEGORY_NAME AS CATEGORY_NAME, ROUND(sum(TODO.TODO_COMPLETE) / COUNT(TODO.CATEGORY_ID) * 100, 1) AS PROG FROM CATEGORY_TABLE CA, (SELECT CATEGORY_ID, PROJECT_ID, TODO_COMPLETE FROM TODO_LIST_TABLE) TODO WHERE CA.PROJECT_ID = ? AND CA.CATEGORY_ID = TODO.CATEGORY_ID group by CA.CATEGORY_NAME';
      params = nowProjectId;
      conn.query(sql, params, function(err, rows, fields){
        if(err){
          console.log(err);
          response = 'DB연결 실패ㅠㅠ' + err;
          callback();
        } else{
          query = '';
          for(var i=0; i<rows.length;i++){
            category_name = rows[i].CATEGORY_NAME;
            progress = rows[i].PROG;

            query +=
            '<div class="progress-group">'
	                    +'<span class="progress-text">'+ category_name + '</span>'
	                    + '<span class="progress-number">'+ progress + '%</b></span>'
	                    + '<div class="progress active">'
	                     + '<div class="progress-bar progress-bar-aqua progress-bar-striped" style="width: '+ progress +'%"></div>'
	                    + '</div> '
	                  + '</div><br>';
            // query += category_name + progress;
          }
          if(category_name != ''){
            response = '현 프로젝트의 카테고리별 진척도는 아래와 같습니다. <br>' + query;
          }else {
            response = '현재 프로젝트의 카테고리는 없습니다.';
          }
         callback();
       }
      });
    }

    function personListFunction(callback){ // 진척도 - 담당자
        var personName = '';
        var personProgress = ''
        sql = 'SELECT MEM.MEMBER_NICKNAME AS PERSON, ROUND(SUM(TODO.TODO_COMPLETE) / COUNT(TODO.TODO_NO) * 100, 1) AS PROG FROM TODO_LIST_TABLE TODO, (SELECT TODO_NO, MEMBER_NICKNAME FROM TODO_MEMBER_TABLE) MEM WHERE TODO.TODO_NO = MEM.TODO_NO AND TODO.PROJECT_ID = ? GROUP BY MEM.MEMBER_NICKNAME';
        params = nowProjectId;
        conn.query(sql, params, function(err, rows, fields){
          if(err){
            console.log(err);
            response = 'DB연결 실패ㅠㅠ' + err;
            callback();
          } else{
            query = '';
            for(var i=0; i<rows.length;i++){
              personName = rows[i].PERSON;
              personProgress = rows[i].PROG;

              query +=
              '<div class="progress-group">'+
	                    '<span class="progress-text">'+personName+'</span>'
	                    + '<span class="progress-number">' + personProgress + '%</b></span>'
	                    + '<div class="progress active">'
	                    +'<div class="progress-bar progress-bar-aqua progress-bar-striped" style="width: '+ personProgress + '%"></div>'
	                    + '</div> '
	                  + '</div><br>';
            }
            if(personName != ''){
              response = '현 프로젝트의 담당자별 진척도는 아래와 같습니다. <br>' + query;
            }else{
              response = '현 프로젝트의 담당자는 없습니다.'
            }
            callback();
          }
        });
    }

    function categoryNameListFunction(callback){ // 카테고리
      params = nowProjectId;
      sql = 'SELECT CATEGORY_NAME FROM CATEGORY_TABLE WHERE PROJECT_ID = ?';
      conn.query(sql, params, function(err, rows, fields){
        if(err){
          console.log(err);
          response = 'DB연결 실패ㅠㅠ' + err;
          callback();
        } else{
          query = '';
          for(var i=0; i<rows.length;i++){
            if(i == rows.length - 1){
                query += ' - ' + rows[i].CATEGORY_NAME + '<br>';
            } else{
                query += ' - ' + rows[i].CATEGORY_NAME + '<br>';
            }
          }
          if(query != ''){
            response = '현 프로젝트의 카테고리는 아래와 같습니다.<br>' + query + '  <br>해당 카테고리에 따른 담당자를 알고 싶으시면 "카테고리명"을 입력하세요.';
          }else {
            response = '현 프로젝트의 카테고리는 없습니다. 카테고리를 추가해주세요.'
          }
          callback();
        }
      });
    }

    function categoryNameToIdFunction(callback){
      sql = 'SELECT CATEGORY_ID FROM CATEGORY_TABLE WHERE CATEGORY_NAME = ? AND PROJECT_ID = ?';
      params2 = [category_name_param, nowProjectId];
      selectCategoryName = category_name_param;
      conn.query(sql, params2, function(err, rows, fields){
        if(err){
          console.log(err);
          response = 'DB연결 실패ㅠㅠ' + err;
          callback();
        } else{
          selectCategoryId = rows[0].CATEGORY_ID;
          // response = rows[0].CATEGORY_ID;
          callback();
        }
      });
    }

    function categoryIdToPersonFunction(callback){ //카테고리 - 카테고리명
      sql = 'SELECT MEMBER_NICKNAME FROM CATEGORY_MEMBER_TABLE WHERE CATEGORY_ID = ?';
      params = selectCategoryId;
        conn.query(sql, params, function(err, rows, fields){
          if(err){
            console.log(err);
            response = 'DB연결 실패ㅠㅠ' + err;
            callback();
          }else{
            query = '';
            for(var i=0; i<rows.length;i++){
              if(i == rows.length - 1){
                  query += ' - ' + rows[i].MEMBER_NICKNAME;
              } else{
                  query += ' - ' + rows[i].MEMBER_NICKNAME + '<br>';
              }
            }
            if(query != ''){
              response = '현 프로젝트의 "'+ selectCategoryName + '"카테고리의 멤버는 아래와 같습니다.<br>' + query;
            }else {
              response = '현 프로젝트의 "'+ selectCategoryName + '"카테고리의 멤버는 없습니다. 멤버를 추가하세요.';
            }
            callback();
          }
        });
    }

    function workedlistFunction(callback){ //오늘 요짱이 한일을 알려줘
        sql = 'SELECT TITLE, KIND, CATEGORY_NAME, EVENT, SUBMIT_TIME FROM HISTORY_TABLE WHERE PROJECT_ID = ? AND MEMBER_NICKNAME like ? AND SUBMIT_TIME like ?';
        params2 = [nowProjectId, nickname, date + '%']; // + '%'
        conn.query(sql, params2, function(err, rows, fields){
          if(err){
            console.log(err);
            response = 'DB연결 실패ㅠㅠ' + err;
            callback();
          }else{
            query = '';
            for(var i=0; i<rows.length;i++){
                  query += ' - ' +rows[i].KIND + '에서 ' + rows[i].CATEGORY_NAME + '카테고리의 ' + rows[i].TITLE + '를 ' + rows[i].EVENT + '했습니다.<br>';
              }

            if(query != ''){
              response = '현 프로젝트의 '+ nickname + '님이 한일은 아래와 같습니다.<br><br>' + query;
            }else {
              response = '현 프로젝트의 '+ nickname + '님이 한일은 없습니다.';
            }
            callback();
          }
        });
    }


   function nowProjectNameFunction(callback){
     var projectNameSql = 'SELECT CONNECTION_TIME, PROJECT_NAME FROM TEMP_TABLE ORDER BY CONNECTION_TIME DESC LIMIT 1';
     conn.query(projectNameSql, function(err, rows, fields){
       if(err){
         console.log(err);
         response = 'DB연결 실패ㅠㅠ' + err;
         callback();
       } else{
         nowProjectName = rows[0].PROJECT_NAME;
         callback();
       }
   });
 }

 function nowProjectIdFunction(callback){
     var projectIdSql = 'SELECT CONNECTION_TIME, PROJECT_ID FROM TEMP_TABLE ORDER BY CONNECTION_TIME DESC LIMIT 1';
     conn.query(projectIdSql, function(err, rows, fields){
       if(err){
         console.log(err);
         response = 'DB연결 실패ㅠㅠ' + err;
         callback();
       } else{
         nowProjectId = rows[0].PROJECT_ID;
         callback();
       }
   });
 }

function nowUserNickNameFunction(callback){
    var userNickNameSql = 'SELECT CONNECTION_TIME, USER_NAME FROM TEMP_TABLE ORDER BY CONNECTION_TIME DESC LIMIT 1';
    conn.query(userNickNameSql, function(err, rows, fields){
      if(err){
        console.log(err);
        response = 'DB연결 실패ㅠㅠ' + err;
        callback();
      } else{
        nowUserNickName = rows[0].USER_NAME;
        callback();
      }
  });
}

function selectTestFunction(callback){
     var testSQL = 'select test from test';
     conn.query(testSQL,  function(err, rows, fields){
       if(err){
         console.log(err);
         response = 'DB연결 실패ㅠㅠ' + err;
         callback();
       } else{
         response = '테스트 완료 ' + rows[0].test;
         callback();
       }
     });
}




    if(action == 'todo.nickname'){ // 프로젝트 넣는 걸로 바꾸기.
      if(nickname == '내'){
         nowUserNickNameFunction(function(){
           nickname = nowUserNickName;
         });
      }
       nowProjectIdFunction(function(){
          todoFunction(function(){
              res.setHeader('Content-Type', 'application/json'); //Requires application/json MIME type
              res.send(JSON.stringify({ "speech": response, "displayText": response  }));
            });
        });
    }else if (action == 'project.memberlist') {
          sql = 'SELECT M.MEMBER_NICKNAME FROM PROJECT_TABLE P, MEMBER_TABLE M WHERE P.PROJECT_ID = M.PROJECT_ID AND PROJECT_NAME = ?'
          nowProjectNameFunction(function(){
            response = nowProjectName;
            params = nowProjectName;
            projectmemberListFunction(function(){
              res.setHeader('Content-Type', 'application/json'); //Requires application/json MIME type
              res.send(JSON.stringify({ "speech": response, "displayText": response  }));
            });
          });

    }else if (action == 'project.inputMember'){
          searchNicknameFuction(function(){
            nowProjectIdFunction(function(){
              projectinputMemberFunction(function(){
              res.setHeader('Content-Type', 'application/json'); //Requires application/json MIME type
              res.send(JSON.stringify({ "speech": response, "displayText": response  }));
            });
          });
        });
    }else if(action == 'todo.who.date'){
        if(nickname == '내'){
           nowUserNickNameFunction(function(){
             nickname = nowUserNickName;
           });
        }
        nowProjectIdFunction(function(){
          todowhodateFunction(function(){
            res.setHeader('Content-Type', 'application/json'); //Requires application/json MIME type
            res.send(JSON.stringify({ "speech": response, "displayText": response  }));
          });
        });
    }else if(action == 'todo.delay.all'){
      nowProjectIdFunction(function(){
        tododelayallFunction(function(){
          res.setHeader('Content-Type', 'application/json'); //Requires application/json MIME type
          res.send(JSON.stringify({ "speech": response, "displayText": response  }));
        });
      });
    }else if(action == 'todo.delay.who'){
      if(nickname == '내'){
         nowUserNickNameFunction(function(){
           nickname = nowUserNickName;
         });
      }
      nowProjectIdFunction(function(){
        tododelaywhoFunction(function(){
          res.setHeader('Content-Type', 'application/json');
          res.send(JSON.stringify({ "speech": response, "displayText": response  }));
        });
      });
    }else if(action == 'progress.all'){
        nowProjectIdFunction(function(){
           progressAllFunction(function(){
              progressPartFunction(function(){
                  var progressAllResult = (progressPart / progressAll) * 100;
                  progressAllResult = progressAllResult.toFixed(1);
                  response = '현재 프로젝트의 전체의 진척도는 아래와 같습니다. <br> <div class="progress-group">'+
	                    '<span class="progress-text">전체</span>'+
	                    '<span class="progress-number">'+progressAllResult+'%</b></span>'+
	                    '<div class="progress active">'+
	                     '<div class="progress-bar progress-bar-aqua progress-bar-striped" style="width: ' + progressAllResult + '%"></div>'+
	                    '</div> '+
	                  '</div>';
                  res.setHeader('Content-Type', 'application/json');
                  res.send(JSON.stringify({ "speech": response, "displayText": response  }));
              });
           });
        });
    }else if(action == 'progress.category.list'){
        nowProjectIdFunction(function(){
          categoryListFunction(function(){
            res.setHeader('Content-Type', 'application/json');
            res.send(JSON.stringify({ "speech": response, "displayText": response  }));
          });
        });
    }else if(action == 'progress.person.list'){
      nowProjectIdFunction(function(){
        personListFunction(function(){
          res.setHeader('Content-Type', 'application/json');
          res.send(JSON.stringify({ "speech": response, "displayText": response  }));
        });
      });
    }else if(action == 'category.list'){
      nowProjectIdFunction(function(){
        categoryNameListFunction(function(){
          res.setHeader('Content-Type', 'application/json');
          res.send(JSON.stringify({ "speech": response, "displayText": response  }));
        });
      });
    }else if(action == 'category.name.to.person'){
      nowProjectIdFunction(function(){
        categoryNameToIdFunction(function(){
          categoryIdToPersonFunction(function(){
            res.setHeader('Content-Type', 'application/json');
            res.send(JSON.stringify({ "speech": response, "displayText": response  }));
          });
        });
      });
    }else if(action == 'worked.list'){
      // response = '함수를 타기 전';
      if(nickname == '내'){
         nowUserNickNameFunction(function(){
           nickname = nowUserNickName;
         });
       }
      nowProjectIdFunction(function(){
        workedlistFunction(function(){
          res.setHeader('Content-Type', 'application/json');
          res.send(JSON.stringify({ "speech": response, "displayText": response  }));
        });
      });
    }else if(action == 'select'){
      selectTestFunction(function(){
        res.setHeader('Content-Type', 'application/json');
        res.send(JSON.stringify({ "speech": response, "displayText": response  }));
      });
    }
};
