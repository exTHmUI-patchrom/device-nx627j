.class public final synthetic Landroid/net/wifi/-$$Lambda$WifiManager$ProvisioningCallbackProxy$rgPeSRj_1qriYZtaCu57EZHtc_Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/-$$Lambda$WifiManager$ProvisioningCallbackProxy$rgPeSRj_1qriYZtaCu57EZHtc_Q;->f$0:Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;

    iput p2, p0, Landroid/net/wifi/-$$Lambda$WifiManager$ProvisioningCallbackProxy$rgPeSRj_1qriYZtaCu57EZHtc_Q;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/-$$Lambda$WifiManager$ProvisioningCallbackProxy$rgPeSRj_1qriYZtaCu57EZHtc_Q;->f$0:Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;

    iget v1, p0, Landroid/net/wifi/-$$Lambda$WifiManager$ProvisioningCallbackProxy$rgPeSRj_1qriYZtaCu57EZHtc_Q;->f$1:I

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;->lambda$onProvisioningFailure$1(Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;I)V

    return-void
.end method
