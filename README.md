# Item Creator for qs-inventory

This project adds a feature for creating and managing items in your GTA FiveM server using `qs-inventory`. It provides an easy-to-use dialog for admins to create new items, define their properties, and integrate them seamlessly with the `qs-inventory` system.

## Features
- **Admin Access**: Only admins can create new items.
- **Item Types**: Supports creation of both regular items and weapons.
- **Metadata**: Ability to specify metadata such as weight, description, image, decay, and more.
- **Usable Items**: Items can be marked as usable or unique.
- **Customizable Dialog**: Admins can define the item's properties using a clean and user-friendly input dialog.
- **Server-Side Handling**: Item data is sent to the server for storage, either in a file or database, based on configuration.

## Installation

1. **Download the resource**: 
   You can download the resource directly from GitHub: [jumalley/itemcreator](https://github.com/jumalley/itemcreator)

2. **Add to your server**:
   - Place the `itemcreator` folder inside your `resources` directory.

3. **Start the resource**:
   - Add `start itemcreator` to your `server.cfg` to ensure the resource is loaded when the server starts.

## Configuration
- The default item properties (such as item weight) and the admin group with permissions are configured in the `config.lua` file.
  
### Configurable Parameters
- **Default Item Weight**: Set the default weight of created items.
- **Admin Permissions**: You can specify which group(s) have access to the `/createitem` command.

## Usage
1. **Run the Item Creation Command**:
   - Admins can run the `/createitem` command in the chat to open the item creation dialog.
   
2. **Fill in Item Details**:
   - The dialog will prompt admins to enter details like the item name, label, weight, type, and more.
   
3. **Item Creation**:
   - Once the admin submits the form, the item data is sent to the server to be saved and used in the `qs-inventory` system.

## Commands
- `/createitem`: Opens the item creation input dialog for admins to define a new item.

## Server-Side Events
- `itemcreator:server:appendToFile`: Sends the created item data from the client to the server for saving (either in a file or database).
  
## Client-Side Events
- `itemcreator:client:createItemInputDialog`: Triggered by the server to open the item creation dialog on the client side.

## Example Workflow

1. **Admin uses the command**:
   - The admin types `/createitem` in the chat to trigger the item creation dialog.

2. **Item dialog appears**:
   - The admin fills in the required information such as item name, label, weight, type (regular item or weapon), image, and additional metadata.

3. **Item is created**:
   - After submission, the item data is sent to the server, where it's stored for use in `qs-inventory`.

## Integrating with qs-inventory

This resource is designed to work seamlessly with the `qs-inventory` system. When an item is created through the input dialog, it is automatically added to the available items list in `qs-inventory` for use in the game.

For more information on integrating with `qs-inventory`, refer to the [qs-inventory documentation](https://docs.quasar-store.com/assets-and-guides/inventory).

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contributing

Contributions are welcome! Feel free to open an issue or submit a pull request if you'd like to contribute to this project.
