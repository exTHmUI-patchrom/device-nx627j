.class public Lcn/nubia/game/ProcessItem;
.super Ljava/lang/Object;
.source "ProcessItem.java"


# instance fields
.field public mIsResumed:Z

.field public mPackageName:Ljava/lang/String;

.field public mUid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/game/ProcessItem;->mPackageName:Ljava/lang/String;

    .line 6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/game/ProcessItem;->mIsResumed:Z

    return-void
.end method
