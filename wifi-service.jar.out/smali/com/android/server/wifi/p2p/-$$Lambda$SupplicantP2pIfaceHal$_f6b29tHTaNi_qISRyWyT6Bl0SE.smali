.class public final synthetic Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$_f6b29tHTaNi_qISRyWyT6Bl0SE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor$listVendorInterfacesCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

.field private final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$_f6b29tHTaNi_qISRyWyT6Bl0SE;->f$0:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    iput-object p2, p0, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$_f6b29tHTaNi_qISRyWyT6Bl0SE;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$_f6b29tHTaNi_qISRyWyT6Bl0SE;->f$0:Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/-$$Lambda$SupplicantP2pIfaceHal$_f6b29tHTaNi_qISRyWyT6Bl0SE;->f$1:Ljava/util/ArrayList;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;->lambda$getVendorIfaceV2_0$3(Lcom/android/server/wifi/p2p/SupplicantP2pIfaceHal;Ljava/util/ArrayList;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V

    return-void
.end method
