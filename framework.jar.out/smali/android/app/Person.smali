.class public final Landroid/app/Person;
.super Ljava/lang/Object;
.source "Person.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Person$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/Person;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIcon:Landroid/graphics/drawable/Icon;

.field private mIsBot:Z

.field private mIsImportant:Z

.field private mKey:Ljava/lang/String;

.field private mName:Ljava/lang/CharSequence;

.field private mUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 259
    new-instance v0, Landroid/app/Person$1;

    invoke-direct {v0}, Landroid/app/Person$1;-><init>()V

    sput-object v0, Landroid/app/Person;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/app/Person$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/app/Person$Builder;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1}, Landroid/app/Person$Builder;->access$000(Landroid/app/Person$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Person;->mName:Ljava/lang/CharSequence;

    .line 51
    invoke-static {p1}, Landroid/app/Person$Builder;->access$100(Landroid/app/Person$Builder;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Person;->mIcon:Landroid/graphics/drawable/Icon;

    .line 52
    invoke-static {p1}, Landroid/app/Person$Builder;->access$200(Landroid/app/Person$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Person;->mUri:Ljava/lang/String;

    .line 53
    invoke-static {p1}, Landroid/app/Person$Builder;->access$300(Landroid/app/Person$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Person;->mKey:Ljava/lang/String;

    .line 54
    invoke-static {p1}, Landroid/app/Person$Builder;->access$400(Landroid/app/Person$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Person;->mIsBot:Z

    .line 55
    invoke-static {p1}, Landroid/app/Person$Builder;->access$500(Landroid/app/Person$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Person;->mIsImportant:Z

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Person$Builder;Landroid/app/Person$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/Person$Builder;
    .param p2, "x1"    # Landroid/app/Person$1;

    .line 29
    invoke-direct {p0, p1}, Landroid/app/Person;-><init>(Landroid/app/Person$Builder;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Person;->mName:Ljava/lang/CharSequence;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/Person;->mIcon:Landroid/graphics/drawable/Icon;

    .line 43
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Person;->mUri:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Person;->mKey:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Person;->mIsImportant:Z

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Person;->mIsBot:Z

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/Person$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/app/Person$1;

    .line 29
    invoke-direct {p0, p1}, Landroid/app/Person;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/app/Person;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/app/Person;

    .line 29
    iget-object v0, p0, Landroid/app/Person;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/app/Person;)Z
    .locals 1
    .param p0, "x0"    # Landroid/app/Person;

    .line 29
    iget-boolean v0, p0, Landroid/app/Person;->mIsBot:Z

    return v0
.end method

.method static synthetic access$1200(Landroid/app/Person;)Z
    .locals 1
    .param p0, "x0"    # Landroid/app/Person;

    .line 29
    iget-boolean v0, p0, Landroid/app/Person;->mIsImportant:Z

    return v0
.end method

.method static synthetic access$700(Landroid/app/Person;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroid/app/Person;

    .line 29
    iget-object v0, p0, Landroid/app/Person;->mName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$800(Landroid/app/Person;)Landroid/graphics/drawable/Icon;
    .locals 1
    .param p0, "x0"    # Landroid/app/Person;

    .line 29
    iget-object v0, p0, Landroid/app/Person;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method static synthetic access$900(Landroid/app/Person;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/app/Person;

    .line 29
    iget-object v0, p0, Landroid/app/Person;->mUri:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    .line 84
    iget-object v0, p0, Landroid/app/Person;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Landroid/app/Person;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 1

    .line 76
    iget-object v0, p0, Landroid/app/Person;->mName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Landroid/app/Person;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public isBot()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Landroid/app/Person;->mIsBot:Z

    return v0
.end method

.method public isImportant()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Landroid/app/Person;->mIsImportant:Z

    return v0
.end method

.method public resolveToLegacyUri()Ljava/lang/String;
    .locals 2

    .line 114
    iget-object v0, p0, Landroid/app/Person;->mUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Landroid/app/Person;->mUri:Ljava/lang/String;

    return-object v0

    .line 117
    :cond_0
    iget-object v0, p0, Landroid/app/Person;->mName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/Person;->mName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 120
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public toBuilder()Landroid/app/Person$Builder;
    .locals 2

    .line 60
    new-instance v0, Landroid/app/Person$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/Person$Builder;-><init>(Landroid/app/Person;Landroid/app/Person$1;)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 130
    iget-object v0, p0, Landroid/app/Person;->mName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Landroid/app/Person;->mIcon:Landroid/graphics/drawable/Icon;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 132
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-object v0, p0, Landroid/app/Person;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    :goto_0
    iget-object v0, p0, Landroid/app/Person;->mUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Landroid/app/Person;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-boolean v0, p0, Landroid/app/Person;->mIsImportant:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 140
    iget-boolean v0, p0, Landroid/app/Person;->mIsBot:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 141
    return-void
.end method
