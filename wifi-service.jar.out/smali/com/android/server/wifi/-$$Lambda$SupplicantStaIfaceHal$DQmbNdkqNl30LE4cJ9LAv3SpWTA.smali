.class public final synthetic Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$DQmbNdkqNl30LE4cJ9LAv3SpWTA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor$listVendorInterfacesCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

.field private final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$DQmbNdkqNl30LE4cJ9LAv3SpWTA;->f$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    iput-object p2, p0, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$DQmbNdkqNl30LE4cJ9LAv3SpWTA;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$DQmbNdkqNl30LE4cJ9LAv3SpWTA;->f$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    iget-object v1, p0, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$DQmbNdkqNl30LE4cJ9LAv3SpWTA;->f$1:Ljava/util/ArrayList;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->lambda$getVendorIfaceV2_0$3(Lcom/android/server/wifi/SupplicantStaIfaceHal;Ljava/util/ArrayList;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V

    return-void
.end method
