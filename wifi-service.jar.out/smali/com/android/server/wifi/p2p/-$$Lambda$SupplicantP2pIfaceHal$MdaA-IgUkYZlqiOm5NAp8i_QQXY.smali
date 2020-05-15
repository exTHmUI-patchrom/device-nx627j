.class public final synthetic Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$MdaA-IgUkYZlqiOm5NAp8i_QQXY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor$getVendorInterfaceCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

.field private final synthetic f$1:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$MdaA-IgUkYZlqiOm5NAp8i_QQXY;->f$0:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    iput-object p2, p0, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$MdaA-IgUkYZlqiOm5NAp8i_QQXY;->f$1:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    return-void
.end method


# virtual methods
.method public final onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorIface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$MdaA-IgUkYZlqiOm5NAp8i_QQXY;->f$0:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$MdaA-IgUkYZlqiOm5NAp8i_QQXY;->f$1:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->lambda$getVendorIfaceV2_0$4(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal$SupplicantResult;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorIface;)V

    return-void
.end method
