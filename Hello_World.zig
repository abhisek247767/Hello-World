// Import the standard library in Zig
const std = @import("std");

// Entry point of the program
pub fn main() void {
    // Print "Hello, World!" to the console
    std.debug.print("Hello, World!\n", .{});
}
