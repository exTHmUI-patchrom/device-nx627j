.class Lcom/android/server/location/GnssStatusListenerHelper$4;
.super Ljava/lang/Object;
.source "GnssStatusListenerHelper.java"

# interfaces
.implements Lcom/android/server/location/GnssStatusListenerHelper$Operation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssStatusListenerHelper;->onSvStatusChanged(I[I[F[F[F[F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssStatusListenerHelper;

.field final synthetic val$azimuths:[F

.field final synthetic val$carrierFreqs:[F

.field final synthetic val$cn0s:[F

.field final synthetic val$elevations:[F

.field final synthetic val$prnWithFlags:[I

.field final synthetic val$svCount:I


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssStatusListenerHelper;I[I[F[F[F[F)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/GnssStatusListenerHelper;

    .line 120
    iput-object p1, p0, Lcom/android/server/location/GnssStatusListenerHelper$4;->this$0:Lcom/android/server/location/GnssStatusListenerHelper;

    iput p2, p0, Lcom/android/server/location/GnssStatusListenerHelper$4;->val$svCount:I

    iput-object p3, p0, Lcom/android/server/location/GnssStatusListenerHelper$4;->val$prnWithFlags:[I

    iput-object p4, p0, Lcom/android/server/location/GnssStatusListenerHelper$4;->val$cn0s:[F

    iput-object p5, p0, Lcom/android/server/location/GnssStatusListenerHelper$4;->val$elevations:[F

    iput-object p6, p0, Lcom/android/server/location/GnssStatusListenerHelper$4;->val$azimuths:[F

    iput-object p7, p0, Lcom/android/server/location/GnssStatusListenerHelper$4;->val$carrierFreqs:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/location/IGnssStatusListener;)V
    .locals 9
    .param p1, "listener"    # Landroid/location/IGnssStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/android/server/location/GnssStatusListenerHelper$4;->this$0:Lcom/android/server/location/GnssStatusListenerHelper;

    invoke-static {v0}, Lcom/android/server/location/GnssStatusListenerHelper;->access$000(Lcom/android/server/location/GnssStatusListenerHelper;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Landroid/location/IGnssStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 125
    .local v0, "callingPid":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/location/GnssStatusListenerHelper$4;->this$0:Lcom/android/server/location/GnssStatusListenerHelper;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lcom/android/server/location/GnssStatusListenerHelper;->access$100(Lcom/android/server/location/GnssStatusListenerHelper;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    return-void

    .line 129
    :cond_0
    iget v3, p0, Lcom/android/server/location/GnssStatusListenerHelper$4;->val$svCount:I

    iget-object v4, p0, Lcom/android/server/location/GnssStatusListenerHelper$4;->val$prnWithFlags:[I

    iget-object v5, p0, Lcom/android/server/location/GnssStatusListenerHelper$4;->val$cn0s:[F

    iget-object v6, p0, Lcom/android/server/location/GnssStatusListenerHelper$4;->val$elevations:[F

    iget-object v7, p0, Lcom/android/server/location/GnssStatusListenerHelper$4;->val$azimuths:[F

    iget-object v8, p0, Lcom/android/server/location/GnssStatusListenerHelper$4;->val$carrierFreqs:[F

    move-object v2, p1

    invoke-interface/range {v2 .. v8}, Landroid/location/IGnssStatusListener;->onSvStatusChanged(I[I[F[F[F[F)V

    .line 136
    return-void
.end method

.method public bridge synthetic execute(Landroid/os/IInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    check-cast p1, Landroid/location/IGnssStatusListener;

    invoke-virtual {p0, p1}, Lcom/android/server/location/GnssStatusListenerHelper$4;->execute(Landroid/location/IGnssStatusListener;)V

    return-void
.end method
