.class Landroid/location/BatchedLocationCallbackTransport$CallbackTransport;
.super Landroid/location/IBatchedLocationCallback$Stub;
.source "BatchedLocationCallbackTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/BatchedLocationCallbackTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackTransport"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/location/BatchedLocationCallbackTransport;


# direct methods
.method private constructor <init>(Landroid/location/BatchedLocationCallbackTransport;)V
    .locals 0

    .line 52
    iput-object p1, p0, Landroid/location/BatchedLocationCallbackTransport$CallbackTransport;->this$0:Landroid/location/BatchedLocationCallbackTransport;

    invoke-direct {p0}, Landroid/location/IBatchedLocationCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/location/BatchedLocationCallbackTransport;Landroid/location/BatchedLocationCallbackTransport$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/location/BatchedLocationCallbackTransport;
    .param p2, "x1"    # Landroid/location/BatchedLocationCallbackTransport$1;

    .line 52
    invoke-direct {p0, p1}, Landroid/location/BatchedLocationCallbackTransport$CallbackTransport;-><init>(Landroid/location/BatchedLocationCallbackTransport;)V

    return-void
.end method


# virtual methods
.method public onLocationBatch(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p1, "locations":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    new-instance v0, Landroid/location/BatchedLocationCallbackTransport$CallbackTransport$1;

    invoke-direct {v0, p0, p1}, Landroid/location/BatchedLocationCallbackTransport$CallbackTransport$1;-><init>(Landroid/location/BatchedLocationCallbackTransport$CallbackTransport;Ljava/util/List;)V

    .line 63
    .local v0, "operation":Landroid/location/LocalListenerHelper$ListenerOperation;, "Landroid/location/LocalListenerHelper$ListenerOperation<Landroid/location/BatchedLocationCallback;>;"
    iget-object v1, p0, Landroid/location/BatchedLocationCallbackTransport$CallbackTransport;->this$0:Landroid/location/BatchedLocationCallbackTransport;

    invoke-virtual {v1, v0}, Landroid/location/BatchedLocationCallbackTransport;->foreach(Landroid/location/LocalListenerHelper$ListenerOperation;)V

    .line 64
    return-void
.end method
