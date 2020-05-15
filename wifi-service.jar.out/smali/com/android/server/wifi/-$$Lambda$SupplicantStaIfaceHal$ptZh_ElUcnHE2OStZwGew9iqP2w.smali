.class public final synthetic Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$ptZh_ElUcnHE2OStZwGew9iqP2w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/wifi/supplicant/V1_1/ISupplicant$addInterfaceCallback;


# instance fields
.field private final synthetic f$0:Landroid/os/HidlSupport$Mutable;


# direct methods
.method public synthetic constructor <init>(Landroid/os/HidlSupport$Mutable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$ptZh_ElUcnHE2OStZwGew9iqP2w;->f$0:Landroid/os/HidlSupport$Mutable;

    return-void
.end method


# virtual methods
.method public final onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/-$$Lambda$SupplicantStaIfaceHal$ptZh_ElUcnHE2OStZwGew9iqP2w;->f$0:Landroid/os/HidlSupport$Mutable;

    invoke-static {v0, p1, p2}, Lcom/android/server/wifi/SupplicantStaIfaceHal;->lambda$addIfaceV1_1$7(Landroid/os/HidlSupport$Mutable;Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Landroid/hardware/wifi/supplicant/V1_0/ISupplicantIface;)V

    return-void
.end method
