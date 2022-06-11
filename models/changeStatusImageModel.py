from config.database import db
cursor = db.cursor()
def change(id,status):
    try:
        status = int(status)
        if status == 0:
            estado= 1
        if status == 1:
            estado= 0
        cursor.execute("UPDATE productos SET id_estado = %s WHERE id_producto = %s ",(estado,id))
        print(cursor)
        db.commit()
        return True
    except:
        print("Error occured in updateUSer")
        return False