# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Level
Level.create(id: 1 , name:'Admin')
Level.create(id: 2 , name: 'หัวหน้าที่ทำการ')
Level.create(id: 3 , name: 'ผู้ช่วยหัวหน้าที่ทำการ')
Level.create(id: 4 , name: 'พนักงานทั่วไป')
Level.create(id: 5 , name: 'เจ้าหน้าที่แผนกธุรการ')
Level.create(id: 6 , name: 'หัวหน้าแผนกธุรกา')
Level.create(id: 7 , name: 'หัวหน้าแผนก')

#Department
Department.create(id: 1 , name: 'ธุรการ' )
Department.create(id: 2 , name: 'ไปรษณีย์ด่วนพิเศษ' )
Department.create(id: 3 , name: 'ไปรษณียภัณฑ์ลงทะเบียน' )
Department.create(id: 4 , name: 'ไปรษณียภัณฑ์ธรรมดา' )
Department.create(id: 5 , name: 'พัสดุไปรษณีย์' )
Department.create(id: 6 , name: 'โลจิสโพสต์' )
Department.create(id: 7 , name: 'ลำเลียงและขนส่งไปรษณีย์' )

#Position
Position.create(id: 1 , name: 'พปณ.1')
Position.create(id: 2 , name: 'พปณ.2')
Position.create(id: 3 , name: 'พปณ.3')
Position.create(id: 4 , name: 'พปณ.4')
Position.create(id: 5 , name: 'พปณ.5')
Position.create(id: 6 , name: 'พปณ.6')
Position.create(id: 7 , name: 'พปณ.7')
Position.create(id: 8 , name: 'พปท.1')
Position.create(id: 9 , name: 'พปท.2')
Position.create(id: 10 , name: 'พปท.3')
Position.create(id: 11 , name: 'พปท.4')
Position.create(id: 12 , name: 'พปท.5')
Position.create(id: 13 , name: 'หนผ.7')
Position.create(id: 14 , name: 'หนผ.8')
Position.create(id: 15 , name: 'ลูกจ้าง')
Position.create(id: 16 , name: 'ลูกจ้างประจำ')
Position.create(id: 17 , name: 'ผู้รับเจ้าทำของ')
Position.create(id: 18 , name: 'หน.ศป.9')
Position.create(id: 19 , name: 'ผช.หน.ศป.8')

#Type
Type.create(id: 1 , name: 'สายขนส่ง')
Type.create(id: 2 , name: 'บรรจุพนักงานเข้าทำงาน')
Type.create(id: 3 , name: 'บริการไปรษณีย์ต่าง ๆ')

#Statuses
Status.create(id:1 , name: "รับเข้าระบบแล้ว")
Status.create(id:2 , name: "ส่งมอบแผนกที่เกี่ยวข้อง")
Status.create(id:3 , name: "รอแผนกดำเนินการ")
Status.create(id:4 , name: "ดำเนินการเสร็จสิ้นแล้ว")
Status.create(id:5 , name: "จัดส่งหน่วยงานที่เกี่ยวข้องแล้ว")

#User
User.create(id: 1 , email:'taweesak.in@gmail.com' , password: 'game1095',
            password_confirmation: 'game1095' , first_name: 'ทวีศักดิ์' ,
            last_name: 'อินทรทัต' , department_id: 1 , position_id: 2 ,
            level_id: 1)
