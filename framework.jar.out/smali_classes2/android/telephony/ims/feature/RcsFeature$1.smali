.class Landroid/telephony/ims/feature/RcsFeature$1;
.super Landroid/telephony/ims/aidl/IImsRcsFeature$Stub;
.source "RcsFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/feature/RcsFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/ims/feature/RcsFeature;


# direct methods
.method constructor <init>(Landroid/telephony/ims/feature/RcsFeature;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/ims/feature/RcsFeature;

    .line 31
    iput-object p1, p0, Landroid/telephony/ims/feature/RcsFeature$1;->this$0:Landroid/telephony/ims/feature/RcsFeature;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsRcsFeature$Stub;-><init>()V

    return-void
.end method
