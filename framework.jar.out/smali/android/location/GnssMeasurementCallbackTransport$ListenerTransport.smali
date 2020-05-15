.class Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport;
.super Landroid/location/IGnssMeasurementsListener$Stub;
.source "GnssMeasurementCallbackTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssMeasurementCallbackTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerTransport"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/location/GnssMeasurementCallbackTransport;


# direct methods
.method private constructor <init>(Landroid/location/GnssMeasurementCallbackTransport;)V
    .locals 0

    .line 50
    iput-object p1, p0, Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport;->this$0:Landroid/location/GnssMeasurementCallbackTransport;

    invoke-direct {p0}, Landroid/location/IGnssMeasurementsListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/location/GnssMeasurementCallbackTransport;Landroid/location/GnssMeasurementCallbackTransport$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/location/GnssMeasurementCallbackTransport;
    .param p2, "x1"    # Landroid/location/GnssMeasurementCallbackTransport$1;

    .line 50
    invoke-direct {p0, p1}, Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport;-><init>(Landroid/location/GnssMeasurementCallbackTransport;)V

    return-void
.end method


# virtual methods
.method public onGnssMeasurementsReceived(Landroid/location/GnssMeasurementsEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/location/GnssMeasurementsEvent;

    .line 53
    new-instance v0, Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport$1;

    invoke-direct {v0, p0, p1}, Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport$1;-><init>(Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport;Landroid/location/GnssMeasurementsEvent;)V

    .line 61
    .local v0, "operation":Landroid/location/LocalListenerHelper$ListenerOperation;, "Landroid/location/LocalListenerHelper$ListenerOperation<Landroid/location/GnssMeasurementsEvent$Callback;>;"
    iget-object v1, p0, Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport;->this$0:Landroid/location/GnssMeasurementCallbackTransport;

    invoke-virtual {v1, v0}, Landroid/location/GnssMeasurementCallbackTransport;->foreach(Landroid/location/LocalListenerHelper$ListenerOperation;)V

    .line 62
    return-void
.end method

.method public onStatusChanged(I)V
    .locals 2
    .param p1, "status"    # I

    .line 66
    new-instance v0, Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport$2;

    invoke-direct {v0, p0, p1}, Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport$2;-><init>(Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport;I)V

    .line 74
    .local v0, "operation":Landroid/location/LocalListenerHelper$ListenerOperation;, "Landroid/location/LocalListenerHelper$ListenerOperation<Landroid/location/GnssMeasurementsEvent$Callback;>;"
    iget-object v1, p0, Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport;->this$0:Landroid/location/GnssMeasurementCallbackTransport;

    invoke-virtual {v1, v0}, Landroid/location/GnssMeasurementCallbackTransport;->foreach(Landroid/location/LocalListenerHelper$ListenerOperation;)V

    .line 75
    return-void
.end method
