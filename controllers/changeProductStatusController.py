from models import changeStatusImageModel
def changeImageStatus(id,status):
    try:
        if changeStatusImageModel.change(id,status):
            return True
        else:
            return False
    except:
        print("Error occured in changeProductStatusController")