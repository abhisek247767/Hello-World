// hello_world.zig

// Import the standard library (std), which contains core functionalities
// like input/output, memory management, etc.
const std = @import("std");

// A function to generate and print a personalized greeting.
// 'pub' makes it visible outside this file.
// It takes two arguments:
//   - writer: A structure that knows how to write data (like to the console).
//             'anytype' allows it to accept any kind of writer.
//   - recipient: The name to greet. '[]const u8' is Zig's type for a read-only string.
// The function returns '!void', meaning it either completes successfully (void) or returns an error.
fn generateAndPrintGreeting(writer: anytype, recipient: []const u8) !void {
    // This is the core logic. We use the passed-in writer to print a formatted string.
    // The first argument is the "format string". '{s}' is a placeholder for a string.
    // The second argument, '.{recipient}', is a tuple containing the values that will
    // replace the placeholders in the format string.
    // 'try' handles potential errors: if printing fails, it will stop and report the error.
    try writer.print("Hello, {s}! Welcome to the world of Zig. 🚀\n", .{recipient});
}

// 'main' is the special function that acts as the entry point for any executable program.
// It must be 'pub' (public) to be discovered by the compiler.
pub fn main() !void {
    // We get a "writer" for the standard output stream (your terminal).
    // This is the standard way to prepare for printing to the console.
    const stdout_writer = std.io.getStdOut().writer();

    // We store the entity we want to greet in a constant variable.
    // In Zig, 'const' means the value cannot be changed after it's set.
    const target_audience = "World";

    // Here, we "call" our custom function. We pass the console writer and our
    // target audience to it. This executes the code inside generateAndPrintGreeting.
    try generateAndPrintGreeting(stdout_writer, target_audience);
}
