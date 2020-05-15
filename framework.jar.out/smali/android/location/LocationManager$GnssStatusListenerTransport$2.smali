.class Landroid/location/LocationManager$GnssStatusListenerTransport$2;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Landroid/location/OnNmeaMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/location/LocationManager$GnssStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$NmeaListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

.field final synthetic val$this$0:Landroid/location/LocationManager;


# direct methods
.method constructor <init>(Landroid/location/LocationManager$GnssStatusListenerTransport;Landroid/location/LocationManager;)V
    .locals 0
    .param p1, "this$1"    # Landroid/location/LocationManager$GnssStatusListenerTransport;

    .line 1770
    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$2;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    iput-object p2, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$2;->val$this$0:Landroid/location/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNmeaMessage(Ljava/lang/String;J)V
    .locals 1
    .param p1, "nmea"    # Ljava/lang/String;
    .param p2, "timestamp"    # J

    .line 1773
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$2;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    invoke-static {v0}, Landroid/location/LocationManager$GnssStatusListenerTransport;->access$900(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GpsStatus$NmeaListener;

    move-result-object v0

    invoke-interface {v0, p2, p3, p1}, Landroid/location/GpsStatus$NmeaListener;->onNmeaReceived(JLjava/lang/String;)V

    .line 1774
    return-void
.end method
