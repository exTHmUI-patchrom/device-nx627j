.class public final synthetic Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$pt8TbY-xQLz1Sbs5w6eUaTAeZLY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getWpsNfcConfigurationTokenCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/SupplicantStaNetworkHal;

.field private final synthetic f$1:Landroid/os/HidlSupport$Mutable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/os/HidlSupport$Mutable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$pt8TbY-xQLz1Sbs5w6eUaTAeZLY;->f$0:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    iput-object p2, p0, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$pt8TbY-xQLz1Sbs5w6eUaTAeZLY;->f$1:Landroid/os/HidlSupport$Mutable;

    return-void
.end method


# virtual methods
.method public final onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$pt8TbY-xQLz1Sbs5w6eUaTAeZLY;->f$0:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    iget-object v1, p0, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$pt8TbY-xQLz1Sbs5w6eUaTAeZLY;->f$1:Landroid/os/HidlSupport$Mutable;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->lambda$getWpsNfcConfigurationTokenInternal$33(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V

    return-void
.end method
