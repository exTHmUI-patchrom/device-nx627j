.class Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;
.super Ljava/lang/Object;
.source "HalDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/HalDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiChipInfo"
.end annotation


# instance fields
.field public availableModes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/wifi/V1_0/IWifiChip$ChipMode;",
            ">;"
        }
    .end annotation
.end field

.field public chip:Landroid/hardware/wifi/V1_0/IWifiChip;

.field public chipId:I

.field public currentModeId:I

.field public currentModeIdValid:Z

.field public ifaces:[[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

.field final synthetic this$0:Lcom/android/server/wifi/HalDeviceManager;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/HalDeviceManager;)V
    .locals 0

    .line 538
    iput-object p1, p0, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->this$0:Lcom/android/server/wifi/HalDeviceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 544
    invoke-static {}, Lcom/android/server/wifi/HalDeviceManager;->access$100()[I

    move-result-object p1

    array-length p1, p1

    new-array p1, p1, [[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    iput-object p1, p0, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/HalDeviceManager;Lcom/android/server/wifi/HalDeviceManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/HalDeviceManager;
    .param p2, "x1"    # Lcom/android/server/wifi/HalDeviceManager$1;

    .line 538
    invoke-direct {p0, p1}, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;-><init>(Lcom/android/server/wifi/HalDeviceManager;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 7

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 549
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{chipId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->chipId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", availableModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->availableModes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentModeIdValid="

    .line 550
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->currentModeIdValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", currentModeId="

    .line 551
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->currentModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 552
    invoke-static {}, Lcom/android/server/wifi/HalDeviceManager;->access$100()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    .line 553
    .local v4, "type":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", ifaces["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "].length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wifi/HalDeviceManager$WifiChipInfo;->ifaces:[[Lcom/android/server/wifi/HalDeviceManager$WifiIfaceInfo;

    aget-object v5, v5, v4

    array-length v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 552
    .end local v4    # "type":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 555
    :cond_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
