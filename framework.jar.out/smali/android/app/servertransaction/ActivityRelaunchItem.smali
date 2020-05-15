.class public Landroid/app/servertransaction/ActivityRelaunchItem;
.super Landroid/app/servertransaction/ClientTransactionItem;
.source "ActivityRelaunchItem.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/ActivityRelaunchItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ActivityRelaunchItem"


# instance fields
.field private mActivityClientRecord:Landroid/app/ActivityThread$ActivityClientRecord;

.field private mConfig:Landroid/util/MergedConfiguration;

.field private mConfigChanges:I

.field private mPendingNewIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPreserveWindow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 133
    new-instance v0, Landroid/app/servertransaction/ActivityRelaunchItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/ActivityRelaunchItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/ActivityRelaunchItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 125
    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    .line 126
    sget-object v0, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingResults:Ljava/util/List;

    .line 127
    sget-object v0, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingNewIntents:Ljava/util/List;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfigChanges:I

    .line 129
    sget-object v0, Landroid/util/MergedConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/MergedConfiguration;

    iput-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfig:Landroid/util/MergedConfiguration;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPreserveWindow:Z

    .line 131
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/servertransaction/ActivityRelaunchItem$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/app/servertransaction/ActivityRelaunchItem$1;

    .line 39
    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityRelaunchItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static obtain(Ljava/util/List;Ljava/util/List;ILandroid/util/MergedConfiguration;Z)Landroid/app/servertransaction/ActivityRelaunchItem;
    .locals 2
    .param p2, "configChanges"    # I
    .param p3, "config"    # Landroid/util/MergedConfiguration;
    .param p4, "preserveWindow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/ReferrerIntent;",
            ">;I",
            "Landroid/util/MergedConfiguration;",
            "Z)",
            "Landroid/app/servertransaction/ActivityRelaunchItem;"
        }
    .end annotation

    .line 87
    .local p0, "pendingResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p1, "pendingNewIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    const-class v0, Landroid/app/servertransaction/ActivityRelaunchItem;

    invoke-static {v0}, Landroid/app/servertransaction/ObjectPool;->obtain(Ljava/lang/Class;)Landroid/app/servertransaction/ObjectPoolItem;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/ActivityRelaunchItem;

    .line 88
    .local v0, "instance":Landroid/app/servertransaction/ActivityRelaunchItem;
    if-nez v0, :cond_0

    .line 89
    new-instance v1, Landroid/app/servertransaction/ActivityRelaunchItem;

    invoke-direct {v1}, Landroid/app/servertransaction/ActivityRelaunchItem;-><init>()V

    move-object v0, v1

    .line 91
    :cond_0
    iput-object p0, v0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingResults:Ljava/util/List;

    .line 92
    iput-object p1, v0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingNewIntents:Ljava/util/List;

    .line 93
    iput p2, v0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfigChanges:I

    .line 94
    iput-object p3, v0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfig:Landroid/util/MergedConfiguration;

    .line 95
    iput-boolean p4, v0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPreserveWindow:Z

    .line 97
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 146
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 147
    return v0

    .line 149
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 152
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/servertransaction/ActivityRelaunchItem;

    .line 153
    .local v2, "other":Landroid/app/servertransaction/ActivityRelaunchItem;
    iget-object v3, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingResults:Ljava/util/List;

    iget-object v4, v2, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingResults:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingNewIntents:Ljava/util/List;

    iget-object v4, v2, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingNewIntents:Ljava/util/List;

    .line 154
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfigChanges:I

    iget v4, v2, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfigChanges:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfig:Landroid/util/MergedConfiguration;

    iget-object v4, v2, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfig:Landroid/util/MergedConfiguration;

    .line 155
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPreserveWindow:Z

    iget-boolean v4, v2, Landroid/app/servertransaction/ActivityRelaunchItem;->mPreserveWindow:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    .line 153
    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 150
    .end local v2    # "other":Landroid/app/servertransaction/ActivityRelaunchItem;
    :cond_3
    :goto_1
    return v1
.end method

.method public execute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 3
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 64
    iget-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mActivityClientRecord:Landroid/app/ActivityThread$ActivityClientRecord;

    if-nez v0, :cond_0

    .line 66
    return-void

    .line 68
    :cond_0
    const-string v0, "activityRestart"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 69
    iget-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mActivityClientRecord:Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-virtual {p1, v0, p3}, Landroid/app/ClientTransactionHandler;->handleRelaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V

    .line 70
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 71
    return-void
.end method

.method public hashCode()I
    .locals 4

    .line 161
    const/16 v0, 0x11

    .line 162
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget-object v3, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingResults:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    .line 163
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int v0, v1, v2

    iget-object v3, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingNewIntents:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 164
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int v2, v1, v0

    iget v3, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfigChanges:I

    add-int/2addr v2, v3

    .line 165
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int v0, v1, v2

    iget-object v3, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfig:Landroid/util/MergedConfiguration;

    invoke-static {v3}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 166
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/2addr v1, v0

    iget-boolean v2, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPreserveWindow:Z

    add-int/2addr v1, v2

    .line 167
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public postExecute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 0
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 76
    invoke-virtual {p1, p2, p3}, Landroid/app/ClientTransactionHandler;->reportRelaunch(Landroid/os/IBinder;Landroid/app/servertransaction/PendingTransactionActions;)V

    .line 77
    return-void
.end method

.method public preExecute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;)V
    .locals 7
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 57
    iget-object v2, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingResults:Ljava/util/List;

    iget-object v3, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingNewIntents:Ljava/util/List;

    iget v4, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfigChanges:I

    iget-object v5, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfig:Landroid/util/MergedConfiguration;

    iget-boolean v6, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPreserveWindow:Z

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Landroid/app/ClientTransactionHandler;->prepareRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;ILandroid/util/MergedConfiguration;Z)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v0

    iput-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mActivityClientRecord:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 59
    return-void
.end method

.method public recycle()V
    .locals 2

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingResults:Ljava/util/List;

    .line 103
    iput-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingNewIntents:Ljava/util/List;

    .line 104
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfigChanges:I

    .line 105
    iput-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfig:Landroid/util/MergedConfiguration;

    .line 106
    iput-boolean v1, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPreserveWindow:Z

    .line 107
    iput-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mActivityClientRecord:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 108
    invoke-static {p0}, Landroid/app/servertransaction/ObjectPool;->recycle(Landroid/app/servertransaction/ObjectPoolItem;)V

    .line 109
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityRelaunchItem{pendingResults="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingResults:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",pendingNewIntents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingNewIntents:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",configChanges="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfigChanges:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfig:Landroid/util/MergedConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",preserveWindow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPreserveWindow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 117
    iget-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingResults:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 118
    iget-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPendingNewIntents:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 119
    iget v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfigChanges:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget-object v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mConfig:Landroid/util/MergedConfiguration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 121
    iget-boolean v0, p0, Landroid/app/servertransaction/ActivityRelaunchItem;->mPreserveWindow:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 122
    return-void
.end method
