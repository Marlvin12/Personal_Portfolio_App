import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Professional Experience").font(.title2).foregroundColor(.blue)) {
                    ExperienceRow(title: "Intern Software Engineer", company: "ODOT-Drive Ohio", duration: "2023 - Present")
                    ExperienceRow(title: "Qualtrics University", company: "Qualtrics", duration: "February 2023 - May 2023")
                    ExperienceRow(title: "Google Techwise Fellow", company: "Google", duration: "May 2023 - August 2024")
                }
                
                
                Section(header: Text("Education").font(.title2).foregroundColor(.blue)) {
                    EducationRow(degree: "Bachelor of Science in Computer Science", school: "Jackson University", year: "2022 - 2026")
                }
                
                Section(header: Text("Skills").font(.title2).foregroundColor(.blue)) {
                    ForEach(["SwiftUI", "iOS Development", "JavaScript", "Python", "C++", "Git"], id: \.self) { skill in
                        HStack {
                            Image(systemName: "checkmark.circle.fill")
                                .foregroundColor(.green)
                            Text(skill)
                        }
                    }
                }
                
                Section(header: Text("Projects").font(.title2).foregroundColor(.blue)) {
                    ForEach(["Stock Price Analyser", "Trading Algorithm", "iOS Expense Tracker", "Secure Username Generator", "File Encryption and Decryption CLI"], id: \.self) { project in
                        Text(project)
                            .font(.body)
                    }
                }
                
                NavigationLink(destination: ResumeView()) {
                    Text("View Resume")
                        .font(.headline)
                        .foregroundColor(.blue)
                }
                
                NavigationLink(destination: ContactView()) {
                    Text("Contact Information")
                        .font(.headline)
                        .foregroundColor(.blue)
                }
            }
            .navigationTitle("Personal Portfolio")
            .listStyle(GroupedListStyle())
        }
    }
}

struct ExperienceRow: View {
    let title: String
    let company: String
    let duration: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 3) {
            Text(title)
                .font(.headline)
            Text(company)
                .font(.subheadline)
            Text(duration)
                .font(.footnote)
        }
    }
}

struct EducationRow: View {
    let degree: String
    let school: String
    let year: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 3) {
            Text(degree)
                .font(.headline)
            Text(school)
                .font(.subheadline)
            Text(year)
                .font(.footnote)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
