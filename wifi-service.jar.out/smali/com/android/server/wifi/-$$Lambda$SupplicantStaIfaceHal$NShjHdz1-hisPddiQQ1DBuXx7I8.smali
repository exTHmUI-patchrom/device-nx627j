.class public final synthetic Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$NShjHdz1-hisPddiQQ1DBuXx7I8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendorStaIface$dppConfiguratorAddCallback;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

.field private final synthetic f$1:Landroid/util/MutableInt;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/util/MutableInt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$NShjHdz1-hisPddiQQ1DBuXx7I8;->f$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    iput-object p2, p0, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$NShjHdz1-hisPddiQQ1DBuXx7I8;->f$1:Landroid/util/MutableInt;

    return-void
.end method


# virtual methods
.method public final onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$NShjHdz1-hisPddiQQ1DBuXx7I8;->f$0:Lcom/android/server/wifi/SupplicantStaIfaceHal;

    iget-object v1, p0, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$NShjHdz1-hisPddiQQ1DBuXx7I8;->f$1:Landroid/util/MutableInt;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->lambda$dppConfiguratorAdd$20(Lcom/android/server/wifi/SupplicantStaIfaceHal;Landroid/util/MutableInt;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;I)V

    return-void
.end method
