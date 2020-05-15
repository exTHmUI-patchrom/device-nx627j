.class public final Landroid/app/AutomaticZenRule;
.super Ljava/lang/Object;
.source "AutomaticZenRule.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AutomaticZenRule;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private conditionId:Landroid/net/Uri;

.field private creationTime:J

.field private enabled:Z

.field private interruptionFilter:I

.field private name:Ljava/lang/String;

.field private owner:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 202
    new-instance v0, Landroid/app/AutomaticZenRule$1;

    invoke-direct {v0}, Landroid/app/AutomaticZenRule$1;-><init>()V

    sput-object v0, Landroid/app/AutomaticZenRule;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    nop

    :cond_0
    iput-boolean v0, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    .line 75
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    .line 76
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    .line 77
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/app/AutomaticZenRule;->owner:Landroid/content/ComponentName;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/AutomaticZenRule;->creationTime:J

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/net/Uri;IZ)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "owner"    # Landroid/content/ComponentName;
    .param p3, "conditionId"    # Landroid/net/Uri;
    .param p4, "interruptionFilter"    # I
    .param p5, "enabled"    # Z

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    .line 53
    iput-object p1, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Landroid/app/AutomaticZenRule;->owner:Landroid/content/ComponentName;

    .line 55
    iput-object p3, p0, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    .line 56
    iput p4, p0, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    .line 57
    iput-boolean p5, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/net/Uri;IZJ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "owner"    # Landroid/content/ComponentName;
    .param p3, "conditionId"    # Landroid/net/Uri;
    .param p4, "interruptionFilter"    # I
    .param p5, "enabled"    # Z
    .param p6, "creationTime"    # J

    .line 66
    invoke-direct/range {p0 .. p5}, Landroid/app/AutomaticZenRule;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/net/Uri;IZ)V

    .line 67
    iput-wide p6, p0, Landroid/app/AutomaticZenRule;->creationTime:J

    .line 68
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 186
    instance-of v0, p1, Landroid/app/AutomaticZenRule;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 187
    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    .line 188
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/AutomaticZenRule;

    .line 189
    .local v2, "other":Landroid/app/AutomaticZenRule;
    iget-boolean v3, v2, Landroid/app/AutomaticZenRule;->enabled:Z

    iget-boolean v4, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    if-ne v3, v4, :cond_2

    iget-object v3, v2, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    iget-object v4, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    .line 190
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v2, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    iget v4, p0, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    if-ne v3, v4, :cond_2

    iget-object v3, v2, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    iget-object v4, p0, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    .line 192
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/app/AutomaticZenRule;->owner:Landroid/content/ComponentName;

    iget-object v4, p0, Landroid/app/AutomaticZenRule;->owner:Landroid/content/ComponentName;

    .line 193
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, v2, Landroid/app/AutomaticZenRule;->creationTime:J

    iget-wide v5, p0, Landroid/app/AutomaticZenRule;->creationTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    .line 189
    :cond_2
    move v0, v1

    :goto_0
    return v0
.end method

.method public getConditionId()Landroid/net/Uri;
    .locals 1

    .line 92
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    return-object v0
.end method

.method public getCreationTime()J
    .locals 2

    .line 120
    iget-wide v0, p0, Landroid/app/AutomaticZenRule;->creationTime:J

    return-wide v0
.end method

.method public getInterruptionFilter()I
    .locals 1

    .line 99
    iget v0, p0, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Landroid/content/ComponentName;
    .locals 1

    .line 85
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->owner:Landroid/content/ComponentName;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 199
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/AutomaticZenRule;->owner:Landroid/content/ComponentName;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/app/AutomaticZenRule;->creationTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    return v0
.end method

.method public setConditionId(Landroid/net/Uri;)V
    .locals 0
    .param p1, "conditionId"    # Landroid/net/Uri;

    .line 127
    iput-object p1, p0, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    .line 128
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 149
    iput-boolean p1, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    .line 150
    return-void
.end method

.method public setInterruptionFilter(I)V
    .locals 0
    .param p1, "interruptionFilter"    # I

    .line 135
    iput p1, p0, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    .line 136
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 142
    iput-object p1, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "enabled="

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",name="

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",interruptionFilter="

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",conditionId="

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",owner="

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/AutomaticZenRule;->owner:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",creationTime="

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/app/AutomaticZenRule;->creationTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 181
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 159
    iget-boolean v0, p0, Landroid/app/AutomaticZenRule;->enabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 161
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    :goto_0
    iget v0, p0, Landroid/app/AutomaticZenRule;->interruptionFilter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 168
    iget-object v0, p0, Landroid/app/AutomaticZenRule;->owner:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 169
    iget-wide v0, p0, Landroid/app/AutomaticZenRule;->creationTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 170
    return-void
.end method
