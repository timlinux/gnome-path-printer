fn main() {
    let user_data_dir = gtk::glib::user_data_dir().into_os_string();
    println!("User data directory: {:#?}", user_data_dir);
}
