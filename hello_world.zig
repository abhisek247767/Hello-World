// Import the standard library.
const std = @import("std");

// main is the program's entry point. The '!void' signifies it can return an error.
pub fn main() !void {
    // '[]const u8' is Zig's type for a read-only string literal.
    const message = "Hello, World! Greetings from Zig!;
    const stdout_writer = std.io.getStdOut().writer();

    // Print the message to stdout, propagating any potential I/O errors with 'try'.
    try stdout_writer.print("{s}\n", .{message});
}
