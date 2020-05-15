.class Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;
.super Ljava/lang/Object;
.source "BadAppController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/BadAppController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProcessItem"
.end annotation


# instance fields
.field private mPkg:Ljava/lang/String;

.field private mUid:I

.field private mWindowNum:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;->mPkg:Ljava/lang/String;

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;->mUid:I

    .line 107
    iput v0, p0, Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;->mWindowNum:I

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;

    .line 104
    iget-object v0, p0, Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;->mPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;
    .param p1, "x1"    # Ljava/lang/String;

    .line 104
    iput-object p1, p0, Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;->mPkg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;

    .line 104
    iget v0, p0, Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;->mUid:I

    return v0
.end method

.method static synthetic access$102(Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;
    .param p1, "x1"    # I

    .line 104
    iput p1, p0, Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;->mUid:I

    return p1
.end method

.method static synthetic access$200(Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;

    .line 104
    iget v0, p0, Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;->mWindowNum:I

    return v0
.end method

.method static synthetic access$208(Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;)I
    .locals 2
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;

    .line 104
    iget v0, p0, Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;->mWindowNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;->mWindowNum:I

    return v0
.end method

.method static synthetic access$210(Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;)I
    .locals 2
    .param p0, "x0"    # Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;

    .line 104
    iget v0, p0, Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;->mWindowNum:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcn/nubia/server/appmgmt/BadAppController$ProcessItem;->mWindowNum:I

    return v0
.end method
