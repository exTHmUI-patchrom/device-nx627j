.class public final synthetic Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$fNWywgsDA2XDTHRXSCdi7qa9O5Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNetworkCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

.field private final synthetic f$1:Landroid/os/HidlSupport$Mutable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/os/HidlSupport$Mutable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$fNWywgsDA2XDTHRXSCdi7qa9O5Q;->f$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    iput-object p2, p0, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$fNWywgsDA2XDTHRXSCdi7qa9O5Q;->f$1:Landroid/os/HidlSupport$Mutable;

    return-void
.end method


# virtual methods
.method public final onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$fNWywgsDA2XDTHRXSCdi7qa9O5Q;->f$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    iget-object v1, p0, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$fNWywgsDA2XDTHRXSCdi7qa9O5Q;->f$1:Landroid/os/HidlSupport$Mutable;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->lambda$getNetwork$9(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantNetwork;)V

    return-void
.end method
