<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.CV"%>

<%
    CV cv = (CV) request.getAttribute("cv");
%>

<!DOCTYPE html>
<html>
<head>

    <title>Generated CV</title>

    <script src="https://cdn.tailwindcss.com"></script>

</head>

<body class="bg-gray-200 py-8">

<div class="max-w-6xl mx-auto bg-white shadow-xl">

    <div class="grid grid-cols-3">

        <!-- LEFT SIDEBAR -->

        <div class="bg-slate-800 text-white p-8">

            <h1 class="text-4xl font-bold mb-2">
                <%= cv.getName() %>
            </h1>

            <p class="text-blue-300 text-xl mb-10">
                <%= cv.getPosition() %>
            </p>

            <h2 class="text-3xl font-bold mb-4">
                CONTACT
            </h2>

            <p class="mb-2">
                📧 <%= cv.getEmail() %>
            </p>

            <p class="mb-2">
                📱 <%= cv.getPhone() %>
            </p>
            
            <p class="mb-10">
                📍 <%= cv.getAddress() %>
            </p>

            <h2 class="text-3xl font-bold mb-4">
                SKILLS
            </h2>

            <ul class="list-disc ml-5 mb-10">
                <%
                String[] skills = cv.getSkills().split("\\n");
                for(String skill : skills){
                %>

                <li><%= skill %></li>

                <%
                }
                %>
            </ul>
            
            <h2 class="text-3xl font-bold mb-4 mt-10">
                LANGUAGES
            </h2>

            <ul class="list-disc ml-5">
                <%
                String[] languages = cv.getLanguages().split("\\n");
                for(String language : languages){
                %>
                <li><%= language %></li>
                <%
                }
                %>

            </ul>

        </div>

        <!-- RIGHT CONTENT -->

        <div class="col-span-2 p-10">

            <section class="mb-10">

                <h2 class="text-4xl font-bold mb-4">
                    PROFILE
                </h2>

                <p class="text-lg leading-relaxed">
                    <%= cv.getSummary() %>
                </p>

            </section>

            <section class="mb-10">

                <h2 class="text-4xl font-bold mb-4">
                    WORK EXPERIENCE
                </h2>

                <ul class="list-disc ml-6 text-lg leading-relaxed">
                    <%
                    String[] experiences = cv.getExperience().split("\\n");
                    for(String experience : experiences){
                    %>
                    <li><%= experience %></li>
                    <%
                    }
                    %>
                </ul>

            </section>

            <section>

                <h2 class="text-4xl font-bold mb-4">
                    EDUCATION
                </h2>

                <ul class="list-disc ml-6 text-lg leading-relaxed">
                    <%
                    String[] educations = cv.getEducation().split("\\n");
                    for(String education : educations){
                    %>
                    <li><%= education %></li>
                    <%
                    }
                    %>
                </ul>

            </section>

        </div>

    </div>

</div>

</body>
</html>