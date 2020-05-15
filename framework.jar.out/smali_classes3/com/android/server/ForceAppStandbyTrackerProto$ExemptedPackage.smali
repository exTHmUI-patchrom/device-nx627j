.class public final Lcom/android/server/ForceAppStandbyTrackerProto$ExemptedPackage;
.super Ljava/lang/Object;
.source "ForceAppStandbyTrackerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ForceAppStandbyTrackerProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ExemptedPackage"
.end annotation


# static fields
.field public static final PACKAGE_NAME:J = 0x10900000002L

.field public static final USER_ID:J = 0x10500000001L


# instance fields
.field final synthetic this$0:Lcom/android/server/ForceAppStandbyTrackerProto;


# direct methods
.method public constructor <init>(Lcom/android/server/ForceAppStandbyTrackerProto;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ForceAppStandbyTrackerProto;

    .line 22
    iput-object p1, p0, Lcom/android/server/ForceAppStandbyTrackerProto$ExemptedPackage;->this$0:Lcom/android/server/ForceAppStandbyTrackerProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
