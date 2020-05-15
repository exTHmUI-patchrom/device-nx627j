.class public Landroid/net/wifi/WifiConfiguration$RecentFailure;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecentFailure"
.end annotation


# static fields
.field public static final NONE:I = 0x0

.field public static final STATUS_AP_UNABLE_TO_HANDLE_NEW_STA:I = 0x11


# instance fields
.field private mAssociationStatus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1647
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiConfiguration$RecentFailure;->mAssociationStatus:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1659
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiConfiguration$RecentFailure;->mAssociationStatus:I

    .line 1660
    return-void
.end method

.method public getAssociationStatus()I
    .locals 1

    .line 1665
    iget v0, p0, Landroid/net/wifi/WifiConfiguration$RecentFailure;->mAssociationStatus:I

    return v0
.end method

.method public setAssociationStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .line 1653
    iput p1, p0, Landroid/net/wifi/WifiConfiguration$RecentFailure;->mAssociationStatus:I

    .line 1654
    return-void
.end method
