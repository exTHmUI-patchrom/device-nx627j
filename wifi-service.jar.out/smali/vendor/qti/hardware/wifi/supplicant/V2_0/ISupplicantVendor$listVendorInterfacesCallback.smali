.class public interface abstract Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor$listVendorInterfacesCallback;
.super Ljava/lang/Object;
.source "ISupplicantVendor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/wifi/supplicant/V2_0/ISupplicantVendor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "listVendorInterfacesCallback"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract onValues(Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/wifi/supplicant/V1_0/SupplicantStatus;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/wifi/supplicant/V1_0/ISupplicant$IfaceInfo;",
            ">;)V"
        }
    .end annotation
.end method
