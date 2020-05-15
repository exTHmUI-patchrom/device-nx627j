.class Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;
.super Ljava/lang/Object;
.source "HalDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/HalDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IfaceCreationData"
.end annotation


# instance fields
.field public chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

.field public chipModeId:I

.field public interfacesToBeRemovedFirst:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/wifi/HalDeviceManager;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/HalDeviceManager;)V
    .locals 0

    .line 1471
    iput-object p1, p0, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->this$0:Lcom/android/server/wifi/HalDeviceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/HalDeviceManager;Lcom/android/server/wifi/HalDeviceManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/HalDeviceManager;
    .param p2, "x1"    # Lcom/android/server/wifi/HalDeviceManager$1;

    .line 1471
    invoke-direct {p0, p1}, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;-><init>(Lcom/android/server/wifi/HalDeviceManager;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1479
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{chipInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipInfo:Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", chipModeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->chipModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", interfacesToBeRemovedFirst="

    .line 1480
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager$IfaceCreationData;->interfacesToBeRemovedFirst:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 1481
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1482
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
