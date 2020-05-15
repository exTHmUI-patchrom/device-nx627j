.class public Landroid/mtp/MtpStorageManager$MtpObject;
.super Ljava/lang/Object;
.source "MtpStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MtpObject"
.end annotation


# instance fields
.field private mChildren:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/mtp/MtpStorageManager$MtpObject;",
            ">;"
        }
    .end annotation
.end field

.field private mId:I

.field private mIsDir:Z

.field private mName:Ljava/lang/String;

.field private mObserver:Landroid/os/FileObserver;

.field private mOp:Landroid/mtp/MtpStorageManager$MtpOperation;

.field private mParent:Landroid/mtp/MtpStorageManager$MtpObject;

.field private mState:Landroid/mtp/MtpStorageManager$MtpObjectState;

.field private mVisited:Z


# direct methods
.method constructor <init>(Ljava/lang/String;ILandroid/mtp/MtpStorageManager$MtpObject;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "parent"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p4, "isDir"    # Z

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput p2, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mId:I

    .line 149
    iput-object p1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mName:Ljava/lang/String;

    .line 150
    iput-object p3, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mParent:Landroid/mtp/MtpStorageManager$MtpObject;

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mObserver:Landroid/os/FileObserver;

    .line 152
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mVisited:Z

    .line 153
    sget-object v1, Landroid/mtp/MtpStorageManager$MtpObjectState;->NORMAL:Landroid/mtp/MtpStorageManager$MtpObjectState;

    iput-object v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mState:Landroid/mtp/MtpStorageManager$MtpObjectState;

    .line 154
    iput-boolean p4, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    .line 155
    sget-object v1, Landroid/mtp/MtpStorageManager$MtpOperation;->NONE:Landroid/mtp/MtpStorageManager$MtpOperation;

    iput-object v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mOp:Landroid/mtp/MtpStorageManager$MtpOperation;

    .line 157
    iget-boolean v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    nop

    :cond_0
    iput-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mChildren:Ljava/util/HashMap;

    .line 158
    return-void
.end method

.method static synthetic access$100(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;
    .locals 1
    .param p0, "x0"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p1, "x1"    # Ljava/lang/String;

    .line 130
    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getChild(Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V
    .locals 0
    .param p0, "x0"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p1, "x1"    # Landroid/mtp/MtpStorageManager$MtpObject;

    .line 130
    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->addChild(Landroid/mtp/MtpStorageManager$MtpObject;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Landroid/mtp/MtpStorageManager$MtpObject;

    .line 130
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mChildren:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;
    .locals 1
    .param p0, "x0"    # Landroid/mtp/MtpStorageManager$MtpObject;

    .line 130
    invoke-direct {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getState()Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpOperation;
    .locals 1
    .param p0, "x0"    # Landroid/mtp/MtpStorageManager$MtpObject;

    .line 130
    invoke-direct {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getOperation()Landroid/mtp/MtpStorageManager$MtpOperation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Landroid/mtp/MtpStorageManager$MtpObject;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p1, "x1"    # Z

    .line 130
    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->setDir(Z)V

    return-void
.end method

.method static synthetic access$1500(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V
    .locals 0
    .param p0, "x0"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p1, "x1"    # Landroid/mtp/MtpStorageManager$MtpObjectState;

    .line 130
    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->setState(Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/mtp/MtpStorageManager$MtpObject;)Z
    .locals 1
    .param p0, "x0"    # Landroid/mtp/MtpStorageManager$MtpObject;

    .line 130
    invoke-direct {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->exists()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpOperation;)V
    .locals 0
    .param p0, "x0"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p1, "x1"    # Landroid/mtp/MtpStorageManager$MtpOperation;

    .line 130
    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->setOperation(Landroid/mtp/MtpStorageManager$MtpOperation;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/mtp/MtpStorageManager$MtpObject;Z)Landroid/mtp/MtpStorageManager$MtpObject;
    .locals 1
    .param p0, "x0"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p1, "x1"    # Z

    .line 130
    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->copy(Z)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p1, "x1"    # Ljava/lang/String;

    .line 130
    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V
    .locals 0
    .param p0, "x0"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p1, "x1"    # Landroid/mtp/MtpStorageManager$MtpObject;

    .line 130
    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->setParent(Landroid/mtp/MtpStorageManager$MtpObject;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/mtp/MtpStorageManager$MtpObject;I)V
    .locals 0
    .param p0, "x0"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p1, "x1"    # I

    .line 130
    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->setId(I)V

    return-void
.end method

.method static synthetic access$400(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;
    .locals 1
    .param p0, "x0"    # Landroid/mtp/MtpStorageManager$MtpObject;

    .line 130
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mObserver:Landroid/os/FileObserver;

    return-object v0
.end method

.method static synthetic access$402(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/os/FileObserver;)Landroid/os/FileObserver;
    .locals 0
    .param p0, "x0"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p1, "x1"    # Landroid/os/FileObserver;

    .line 130
    iput-object p1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mObserver:Landroid/os/FileObserver;

    return-object p1
.end method

.method static synthetic access$500(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;
    .locals 1
    .param p0, "x0"    # Landroid/mtp/MtpStorageManager$MtpObject;

    .line 130
    invoke-direct {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getObserver()Landroid/os/FileObserver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/os/FileObserver;)V
    .locals 0
    .param p0, "x0"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p1, "x1"    # Landroid/os/FileObserver;

    .line 130
    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->setObserver(Landroid/os/FileObserver;)V

    return-void
.end method

.method static synthetic access$700(Landroid/mtp/MtpStorageManager$MtpObject;)Z
    .locals 1
    .param p0, "x0"    # Landroid/mtp/MtpStorageManager$MtpObject;

    .line 130
    invoke-direct {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->isVisited()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/mtp/MtpStorageManager$MtpObject;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p1, "x1"    # Z

    .line 130
    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->setVisited(Z)V

    return-void
.end method

.method static synthetic access$900(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Landroid/mtp/MtpStorageManager$MtpObject;

    .line 130
    invoke-direct {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getChildren()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private addChild(Landroid/mtp/MtpStorageManager$MtpObject;)V
    .locals 2
    .param p1, "child"    # Landroid/mtp/MtpStorageManager$MtpObject;

    .line 262
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mChildren:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    return-void
.end method

.method private copy(Z)Landroid/mtp/MtpStorageManager$MtpObject;
    .locals 5
    .param p1, "recursive"    # Z

    .line 278
    new-instance v0, Landroid/mtp/MtpStorageManager$MtpObject;

    iget-object v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mName:Ljava/lang/String;

    iget v2, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mId:I

    iget-object v3, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mParent:Landroid/mtp/MtpStorageManager$MtpObject;

    iget-boolean v4, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/mtp/MtpStorageManager$MtpObject;-><init>(Ljava/lang/String;ILandroid/mtp/MtpStorageManager$MtpObject;Z)V

    .line 279
    .local v0, "copy":Landroid/mtp/MtpStorageManager$MtpObject;
    iget-boolean v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    iput-boolean v1, v0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    .line 280
    iget-boolean v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mVisited:Z

    iput-boolean v1, v0, Landroid/mtp/MtpStorageManager$MtpObject;->mVisited:Z

    .line 281
    iget-object v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mState:Landroid/mtp/MtpStorageManager$MtpObjectState;

    iput-object v1, v0, Landroid/mtp/MtpStorageManager$MtpObject;->mState:Landroid/mtp/MtpStorageManager$MtpObjectState;

    .line 282
    iget-boolean v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Landroid/mtp/MtpStorageManager$MtpObject;->mChildren:Ljava/util/HashMap;

    .line 283
    if-eqz p1, :cond_1

    iget-boolean v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    if-eqz v1, :cond_1

    .line 284
    iget-object v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mChildren:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/mtp/MtpStorageManager$MtpObject;

    .line 285
    .local v2, "child":Landroid/mtp/MtpStorageManager$MtpObject;
    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/mtp/MtpStorageManager$MtpObject;->copy(Z)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v3

    .line 286
    .local v3, "childCopy":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-direct {v3, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->setParent(Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 287
    invoke-direct {v0, v3}, Landroid/mtp/MtpStorageManager$MtpObject;->addChild(Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 288
    .end local v2    # "child":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local v3    # "childCopy":Landroid/mtp/MtpStorageManager$MtpObject;
    goto :goto_1

    .line 290
    :cond_1
    return-object v0
.end method

.method private exists()Z
    .locals 1

    .line 274
    invoke-virtual {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private getChild(Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 266
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mChildren:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpStorageManager$MtpObject;

    return-object v0
.end method

.method private getChildren()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/mtp/MtpStorageManager$MtpObject;",
            ">;"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mChildren:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private getObserver()Landroid/os/FileObserver;
    .locals 1

    .line 254
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mObserver:Landroid/os/FileObserver;

    return-object v0
.end method

.method private getOperation()Landroid/mtp/MtpStorageManager$MtpOperation;
    .locals 1

    .line 246
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mOp:Landroid/mtp/MtpStorageManager$MtpOperation;

    return-object v0
.end method

.method private getState()Landroid/mtp/MtpStorageManager$MtpObjectState;
    .locals 1

    .line 236
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mState:Landroid/mtp/MtpStorageManager$MtpObjectState;

    return-object v0
.end method

.method private isVisited()Z
    .locals 1

    .line 217
    iget-boolean v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mVisited:Z

    return v0
.end method

.method private setDir(Z)V
    .locals 1
    .param p1, "dir"    # Z

    .line 225
    iget-boolean v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    if-eq p1, v0, :cond_1

    .line 226
    iput-boolean p1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    .line 227
    iget-boolean v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mChildren:Ljava/util/HashMap;

    .line 229
    :cond_1
    return-void
.end method

.method private setId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 213
    iput p1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mId:I

    .line 214
    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 209
    iput-object p1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mName:Ljava/lang/String;

    .line 210
    return-void
.end method

.method private setObserver(Landroid/os/FileObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/os/FileObserver;

    .line 258
    iput-object p1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mObserver:Landroid/os/FileObserver;

    .line 259
    return-void
.end method

.method private setOperation(Landroid/mtp/MtpStorageManager$MtpOperation;)V
    .locals 0
    .param p1, "op"    # Landroid/mtp/MtpStorageManager$MtpOperation;

    .line 250
    iput-object p1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mOp:Landroid/mtp/MtpStorageManager$MtpOperation;

    .line 251
    return-void
.end method

.method private setParent(Landroid/mtp/MtpStorageManager$MtpObject;)V
    .locals 0
    .param p1, "parent"    # Landroid/mtp/MtpStorageManager$MtpObject;

    .line 221
    iput-object p1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mParent:Landroid/mtp/MtpStorageManager$MtpObject;

    .line 222
    return-void
.end method

.method private setState(Landroid/mtp/MtpStorageManager$MtpObjectState;)V
    .locals 2
    .param p1, "state"    # Landroid/mtp/MtpStorageManager$MtpObjectState;

    .line 240
    iput-object p1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mState:Landroid/mtp/MtpStorageManager$MtpObjectState;

    .line 241
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mState:Landroid/mtp/MtpStorageManager$MtpObjectState;

    sget-object v1, Landroid/mtp/MtpStorageManager$MtpObjectState;->NORMAL:Landroid/mtp/MtpStorageManager$MtpObjectState;

    if-ne v0, v1, :cond_0

    .line 242
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpOperation;->NONE:Landroid/mtp/MtpStorageManager$MtpOperation;

    iput-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mOp:Landroid/mtp/MtpStorageManager$MtpOperation;

    .line 243
    :cond_0
    return-void
.end method

.method private setVisited(Z)V
    .locals 0
    .param p1, "visited"    # Z

    .line 232
    iput-boolean p1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mVisited:Z

    .line 233
    return-void
.end method


# virtual methods
.method public getFormat()I
    .locals 2

    .line 175
    iget-boolean v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x3001

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/MediaFile;->getFormatCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getId()I
    .locals 1

    .line 167
    iget v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mId:I

    return v0
.end method

.method public getModifiedTime()J
    .locals 4

    .line 183
    invoke-virtual {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Landroid/mtp/MtpStorageManager$MtpObject;
    .locals 1

    .line 187
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mParent:Landroid/mtp/MtpStorageManager$MtpObject;

    return-object v0
.end method

.method public getPath()Ljava/nio/file/Path;
    .locals 2

    .line 199
    invoke-virtual {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mName:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mParent:Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    iget-object v1, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getRoot()Landroid/mtp/MtpStorageManager$MtpObject;
    .locals 1

    .line 191
    invoke-virtual {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mParent:Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getRoot()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 195
    iget-boolean v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getStorageId()I
    .locals 1

    .line 179
    invoke-virtual {p0}, Landroid/mtp/MtpStorageManager$MtpObject;->getRoot()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v0

    return v0
.end method

.method public isDir()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mIsDir:Z

    return v0
.end method

.method public isRoot()Z
    .locals 1

    .line 203
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObject;->mParent:Landroid/mtp/MtpStorageManager$MtpObject;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
