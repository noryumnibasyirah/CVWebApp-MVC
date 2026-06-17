<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>CV Generator</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>

<body class="bg-gray-100">

<div class="max-w-3xl mx-auto mt-10 bg-white p-8 rounded-lg shadow-lg">

    <h1 class="text-3xl font-bold text-center mb-6">
        Curriculum Vitae Generator
    </h1>

    <form action="CVController" method="post">
        
        <div class="mb-4">
            <label class="block font-semibold">
                Position / Career Title
            </label>

            <input type="text" name="position" 
                   class="w-full border rounded p-2">
        </div>

        <div class="mb-4">
            <label class="block font-semibold">Full Name</label>
            <input type="text" name="name" required
                   class="w-full border rounded p-2">
        </div>

        <div class="mb-4">
            <label class="block font-semibold">Email</label>
            <input type="email" name="email" required
                   class="w-full border rounded p-2">
        </div>

        <div class="mb-4">
            <label class="block font-semibold">Phone Number</label>
            <input type="text" name="phone" required
                   class="w-full border rounded p-2">
        </div>
        
        <div class="mb-4">
            <label class="block font-semibold">
                Address
            </label>
            <textarea name="address" rows="3"
                      class="w-full border rounded p-2"></textarea>
        </div>

        <div class="mb-4">
            <label class="block font-semibold">Profile Summary</label>
            <textarea name="summary" rows="4"
                      class="w-full border rounded p-2"></textarea>
        </div>

        <div class="mb-4">
            <label class="block font-semibold">Education</label>
            <textarea name="education" rows="4" 
                      class="w-full border rounded p-2"></textarea>
        </div>

        <div class="mb-4">
            <label class="block font-semibold">Work Experience</label>
            <textarea name="experience" rows="4" 
                      class="w-full border rounded p-2"></textarea>
        </div>

        <div class="mb-4">
            <label class="block font-semibold">Skills</label>
            <textarea name="skills" rows="4" 
                      class="w-full border rounded p-2"></textarea>
        </div>
        
        <div class="mb-4">
            <label class="block font-semibold">
                Languages
            </label>
            <textarea name="languages" rows="3" 
                      class="w-full border rounded p-2"></textarea>
        </div>
        
        <div class="text-center">
            <button
                type="submit"
                class="bg-blue-500 text-white px-6 py-2 rounded hover:bg-blue-700">
                Generate CV
            </button>
        </div>

        <div class="text-center mt-4">
            <a href="ExampleCVController"
               class="bg-green-500 text-white px-6 py-2 rounded hover:bg-green-700">
                View Example CV
            </a>
        </div>

    </form>

</div>

</body>
</html>