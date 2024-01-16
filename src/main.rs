use gtk::prelude::*;

fn main() {
    // Initialize GTK
    if let Err(err) = gtk::init() {
        eprintln!("Failed to initialize GTK: {}", err);
        return;
    }

    // Create a new window
    let window = gtk::Window::new(gtk::WindowType::Toplevel);
    window.set_title("User Data Directory");
    window.set_default_size(350, 70);

    // Create a label to display the user data directory
    let label = gtk::Label::new(Some(&gtk::glib::user_data_dir().to_string_lossy()));

    // Add the label to the window
    window.add(&label);

    // Show the window and run the GTK main loop
    window.show_all();
    gtk::main();
}
