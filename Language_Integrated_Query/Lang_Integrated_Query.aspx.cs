using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Cache;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Language_Integrated_Query
{
    public partial class Lang_Integrated_Query : System.Web.UI.Page
    {
        public class Student
        {
            public string Name { get; set; }
            public int Age { get; set; }

        }
        List<Student> stud_List = new List<Student> {
                new Student { Name = "ABC", Age = 15 },
                new Student { Name = "XYZ", Age = 25 },
                new Student { Name = "BCD", Age = 35 },
                new Student { Name = "WAR", Age = 22 },
                new Student { Name = "ABH", Age = 28 },
                new Student { Name = "SAM", Age = 19 },
                new Student { Name = "SARA", Age = 17 },
                new Student { Name = "LMN", Age = 30 },
                new Student { Name = "PQR", Age = 14 },
                new Student { Name = "STU", Age = 21 }
            };
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //All Name Of Student
            var nm = stud_List.Select(s => s.Name);
            Label.Text = "All Students: " +
                string.Join(", ", nm);

            //Specfic Student Data- First Student
            Label1.Text="1. Frist Student Data: "+
                stud_List[0].Name;
            //Print Student Data where Age is 18 or less
            //Label2.Text = "";
            //foreach (var s1 in stud_List.Where(a => a.Age <= 18))
            //{
            //    Label2.Text += "Name: " + s1.Name + ", Age: " + s1.Age + "<br>";
            //}

            //2. Print All The Student Data Age>18
            var s2 = stud_List.Where(a => a.Age > 18).Select(s => s.Name);
            Label2.Text ="2.All The Student Data Age>18: " + string.Join(",", s2);

            // 3. Display the students having their names starting with 'S' (or 'A' per red hint)
            var startsWithS = stud_List.Where(s => s.Name.StartsWith("S", StringComparison.OrdinalIgnoreCase)).Select(s => s.Name);
            Label3.Text = "3. Names starting with S: " + string.Join(", ", startsWithS);

            // 4. Fourth student details
            Label4.Text = "4.Four Student Data: " +
               stud_List[3].Name;

            // 5. Display the students name in ascending/descending order
            var ascNames = stud_List.OrderBy(s => s.Name).Select(s => s.Name);
            var descNames = stud_List.OrderByDescending(s => s.Name).Select(s => s.Name);
            Label5.Text = $"5. Ascending: {string.Join(", ", ascNames)} <br/> Descending: {string.Join(", ", descNames)}";

            // 6. Display the total students count
            int totalCount = stud_List.Count();
            Label6.Text = "6. Total Students Count: " + totalCount;

            // 7. Display the average age of all students
            double avgAge = stud_List.Average(s => s.Age);
            Label7.Text = "7. Average Age: " + avgAge.ToString("");

            // 8. Display the sum, maximum and minimum age from the list of students
            int sumAge = stud_List.Sum(s => s.Age);
            int maxAge = stud_List.Max(s => s.Age);
            int minAge = stud_List.Min(s => s.Age);
            Label8.Text = $"8. Age Stats -> Sum: {sumAge}, Max: {maxAge}, Min: {minAge}";

            // 9. Display the first and last student details
            var firstStud = stud_List.First();
            var lastStud = stud_List.Last();
            Label9.Text = $"9. First Student: {firstStud.Name} ({firstStud.Age}) | Last Student: {lastStud.Name} ({lastStud.Age})";

            // 10. Safe FirstOrDefault (Age > 15)
            var firstStudent = stud_List.FirstOrDefault(s => s.Age > 15);
            if (firstStudent != null)
            {
                Label10.Text = "10.First student having age >15: " + firstStudent.Name;
            }
            else
            {
                Label10.Text = "10.No student found with age >15";
            }

            // 11. Safe LastOrDefault (Age > 15)
            var lastStudent = stud_List.LastOrDefault(s => s.Age > 15);
            if (lastStudent != null)
            {
                Label11.Text = "11.Last student having age >15: " + lastStudent.Name;
            }
            else
            {
                Label11.Text = "11.No student found with age >15";
            }

        }
    }
}