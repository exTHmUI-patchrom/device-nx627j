.class public final synthetic Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$PsbWp-8kaRJB_R8wNaC3dL59Bm8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/wifi/supplicant/V1_0/ISupplicantStaNetwork$getPskCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/SupplicantStaNetworkHal;

.field private final synthetic f$1:Landroid/util/MutableBoolean;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$PsbWp-8kaRJB_R8wNaC3dL59Bm8;->f$0:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    iput-object p2, p0, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$PsbWp-8kaRJB_R8wNaC3dL59Bm8;->f$1:Landroid/util/MutableBoolean;

    return-void
.end method


# virtual methods
.method public final onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;[B)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$PsbWp-8kaRJB_R8wNaC3dL59Bm8;->f$0:Lcom/android/server/wifi/SupplicantStaNetworkHal;

    iget-object v1, p0, Lcom/android/server/wifi/-$$Lambda$SupplicantStaNetworkHal$PsbWp-8kaRJB_R8wNaC3dL59Bm8;->f$1:Landroid/util/MutableBoolean;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/wifi/SupplicantStaNetworkHal;->lambda$getPsk$14(Lcom/android/server/wifi/SupplicantStaNetworkHal;Landroid/util/MutableBoolean;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;[B)V

    return-void
.end method
