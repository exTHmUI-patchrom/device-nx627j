.class Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;
.super Ljava/lang/Object;
.source "HalDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/HalDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterfaceCacheEntry"
.end annotation


# instance fields
.field public chip:Landroid/hardware/wifi/V1_0/IWifiChip;

.field public chipId:I

.field public creationTime:J

.field public destroyedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/server/wifi/HalDeviceManager$InterfaceDestroyedListenerProxy;",
            ">;"
        }
    .end annotation
.end field

.field public isLowPriority:Z

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/wifi/HalDeviceManager;

.field public type:I


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/HalDeviceManager;)V
    .locals 0

    .line 513
    iput-object p1, p0, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->this$0:Lcom/android/server/wifi/HalDeviceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 518
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->destroyedListeners:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/HalDeviceManager;Lcom/android/server/wifi/HalDeviceManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/HalDeviceManager;
    .param p2, "x1"    # Lcom/android/server/wifi/HalDeviceManager$1;

    .line 513
    invoke-direct {p0, p1}, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;-><init>(Lcom/android/server/wifi/HalDeviceManager;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 525
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", destroyedListeners.size()="

    .line 526
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->destroyedListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", creationTime="

    .line 527
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->creationTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isLowPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/HalDeviceManager$InterfaceCacheEntry;->isLowPriority:Z

    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
