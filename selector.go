package main

import (
	"database/sql"
	"fmt"
	"log"

	_ "github.com/go-sql-driver/mysql"
)

type reqData struct {
	area, ideology, team, sea, nf string
}

func selector(req reqData) (nation string) {
	user := dbUser{}
	user.setDbUser()
	db, err := sql.Open("mysql", user.userName+":"+user.userPassword+"@/nationsDb")
	if err != nil {
		log.Fatal("sql.Open:", err)
	}
	defer db.Close()

	var sqlStr string = "select nation_name from nations where "
	var flag bool = false
	if req.area != "0" {
		sqlStr += "area_id=" + req.area + " "
		flag = true
	}
	if req.ideology != "0" {
		if flag {
			sqlStr = sqlStr + "and "
		}
		sqlStr += "ideology_id=" + req.ideology + " "
		flag = true
	}
	if req.team != "0" {
		if flag {
			sqlStr = sqlStr + "and "
		}
		sqlStr += "team_id=" + req.team + " "
		flag = true
	}
	if req.sea != "0" {
		if flag {
			sqlStr = sqlStr + "and "
		}
		sqlStr += "sea=" + req.sea + " "
		flag = true
	}
	if req.nf != "0" {
		if flag {
			sqlStr = sqlStr + "and "
		}
		sqlStr += "nf=" + req.nf + " "
		flag = true
	}

	if !flag {
		sqlStr = "select nation_name from nations "
	}
	sqlStr += "order by rand() limit 1;"
	fmt.Println(sqlStr)

	err = db.QueryRow(sqlStr).Scan(&nation)
	if err != nil {
		if nation == "" {
			nation = "該当なし"
		} else {
			log.Fatal("QueryRow:", err)
		}
	}
	return
}
