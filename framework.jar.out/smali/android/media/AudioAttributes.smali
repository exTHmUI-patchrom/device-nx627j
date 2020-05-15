.class public final Landroid/media/AudioAttributes;
.super Ljava/lang/Object;
.source "AudioAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioAttributes$AttributeContentType;,
        Landroid/media/AudioAttributes$AttributeUsage;,
        Landroid/media/AudioAttributes$Builder;
    }
.end annotation


# static fields
.field private static final ALL_PARCEL_FLAGS:I = 0x1

.field private static final ATTR_PARCEL_IS_NULL_BUNDLE:I = -0x7b9

.field private static final ATTR_PARCEL_IS_VALID_BUNDLE:I = 0x7bc

.field public static final CONTENT_TYPE_MOVIE:I = 0x3

.field public static final CONTENT_TYPE_MUSIC:I = 0x2

.field public static final CONTENT_TYPE_SONIFICATION:I = 0x4

.field public static final CONTENT_TYPE_SPEECH:I = 0x1

.field public static final CONTENT_TYPE_UNKNOWN:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/AudioAttributes;",
            ">;"
        }
    .end annotation
.end field

.field private static final FLAG_ALL:I = 0x3ff

.field private static final FLAG_ALL_PUBLIC:I = 0x111

.field public static final FLAG_AUDIBILITY_ENFORCED:I = 0x1

.field public static final FLAG_BEACON:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FLAG_BYPASS_INTERRUPTION_POLICY:I = 0x40
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FLAG_BYPASS_MUTE:I = 0x80
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FLAG_DEEP_BUFFER:I = 0x200

.field public static final FLAG_HW_AV_SYNC:I = 0x10

.field public static final FLAG_HW_HOTWORD:I = 0x20
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final FLAG_LOW_LATENCY:I = 0x100

.field public static final FLAG_SCO:I = 0x4

.field public static final FLAG_SECURE:I = 0x2

.field public static final FLATTEN_TAGS:I = 0x1

.field public static final SDK_USAGES:[I

.field public static final SUPPRESSIBLE_ALARM:I = 0x4

.field public static final SUPPRESSIBLE_CALL:I = 0x2

.field public static final SUPPRESSIBLE_MEDIA:I = 0x5

.field public static final SUPPRESSIBLE_NEVER:I = 0x3

.field public static final SUPPRESSIBLE_NOTIFICATION:I = 0x1

.field public static final SUPPRESSIBLE_SYSTEM:I = 0x6

.field public static final SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

.field private static final TAG:Ljava/lang/String; = "AudioAttributes"

.field public static final USAGE_ALARM:I = 0x4

.field public static final USAGE_ASSISTANCE_ACCESSIBILITY:I = 0xb

.field public static final USAGE_ASSISTANCE_NAVIGATION_GUIDANCE:I = 0xc

.field public static final USAGE_ASSISTANCE_SONIFICATION:I = 0xd

.field public static final USAGE_ASSISTANT:I = 0x10

.field public static final USAGE_GAME:I = 0xe

.field public static final USAGE_MEDIA:I = 0x1

.field public static final USAGE_NOTIFICATION:I = 0x5

.field public static final USAGE_NOTIFICATION_COMMUNICATION_DELAYED:I = 0x9

.field public static final USAGE_NOTIFICATION_COMMUNICATION_INSTANT:I = 0x8

.field public static final USAGE_NOTIFICATION_COMMUNICATION_REQUEST:I = 0x7

.field public static final USAGE_NOTIFICATION_EVENT:I = 0xa

.field public static final USAGE_NOTIFICATION_RINGTONE:I = 0x6

.field public static final USAGE_UNKNOWN:I = 0x0

.field public static final USAGE_VIRTUAL_SOURCE:I = 0xf

.field public static final USAGE_VOICE_COMMUNICATION:I = 0x2

.field public static final USAGE_VOICE_COMMUNICATION_SIGNALLING:I = 0x3


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mContentType:I

.field private mFlags:I

.field private mFormattedTags:Ljava/lang/String;

.field private mSource:I

.field private mTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUsage:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 239
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    .line 240
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 241
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/4 v3, 0x2

    const/4 v4, 0x6

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 242
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/4 v5, 0x7

    invoke-virtual {v0, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 243
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/16 v5, 0x8

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 244
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/16 v5, 0x9

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 245
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/16 v5, 0xa

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 246
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/4 v5, 0x3

    const/16 v6, 0xb

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 247
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 248
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 249
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 250
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 251
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 252
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 254
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 255
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 256
    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 263
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/media/AudioAttributes;->SDK_USAGES:[I

    .line 845
    new-instance v0, Landroid/media/AudioAttributes$1;

    invoke-direct {v0}, Landroid/media/AudioAttributes$1;-><init>()V

    sput-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0x10
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    .line 376
    iput v0, p0, Landroid/media/AudioAttributes;->mContentType:I

    .line 377
    const/4 v1, -0x1

    iput v1, p0, Landroid/media/AudioAttributes;->mSource:I

    .line 378
    iput v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    .line 384
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioAttributes$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/AudioAttributes$1;

    .line 69
    invoke-direct {p0}, Landroid/media/AudioAttributes;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    .line 376
    iput v0, p0, Landroid/media/AudioAttributes;->mContentType:I

    .line 377
    const/4 v1, -0x1

    iput v1, p0, Landroid/media/AudioAttributes;->mSource:I

    .line 378
    iput v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    .line 817
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/AudioAttributes;->mUsage:I

    .line 818
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/AudioAttributes;->mContentType:I

    .line 819
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/AudioAttributes;->mSource:I

    .line 820
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/AudioAttributes;->mFlags:I

    .line 821
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    move v0, v2

    nop

    .line 822
    .local v0, "hasFlattenedTags":Z
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    .line 823
    if-eqz v0, :cond_1

    .line 824
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    .line 825
    iget-object v1, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    iget-object v2, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 827
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 828
    .local v1, "tagsArray":[Ljava/lang/String;
    array-length v3, v1

    sub-int/2addr v3, v2

    .local v3, "i":I
    :goto_0
    move v2, v3

    .end local v3    # "i":I
    .local v2, "i":I
    if-ltz v2, :cond_2

    .line 829
    iget-object v3, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 828
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 831
    .end local v3    # "i":I
    :cond_2
    const-string v2, ";"

    iget-object v3, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    .line 833
    .end local v1    # "tagsArray":[Ljava/lang/String;
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/16 v2, -0x7b9

    if-eq v1, v2, :cond_4

    const/16 v2, 0x7bc

    if-eq v1, v2, :cond_3

    .line 841
    const-string v1, "AudioAttributes"

    const-string v2, "Illegal value unmarshalling AudioAttributes, can\'t initialize bundle"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 838
    :cond_3
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v1, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    .line 839
    goto :goto_2

    .line 835
    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    .line 836
    nop

    .line 843
    :goto_2
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/AudioAttributes$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/media/AudioAttributes$1;

    .line 69
    invoke-direct {p0, p1}, Landroid/media/AudioAttributes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$000(Landroid/media/AudioAttributes;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioAttributes;

    .line 69
    iget v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    return v0
.end method

.method static synthetic access$002(Landroid/media/AudioAttributes;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioAttributes;
    .param p1, "x1"    # I

    .line 69
    iput p1, p0, Landroid/media/AudioAttributes;->mUsage:I

    return p1
.end method

.method static synthetic access$100(Landroid/media/AudioAttributes;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioAttributes;

    .line 69
    iget v0, p0, Landroid/media/AudioAttributes;->mContentType:I

    return v0
.end method

.method static synthetic access$102(Landroid/media/AudioAttributes;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioAttributes;
    .param p1, "x1"    # I

    .line 69
    iput p1, p0, Landroid/media/AudioAttributes;->mContentType:I

    return p1
.end method

.method static synthetic access$200(Landroid/media/AudioAttributes;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioAttributes;

    .line 69
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    return v0
.end method

.method static synthetic access$202(Landroid/media/AudioAttributes;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioAttributes;
    .param p1, "x1"    # I

    .line 69
    iput p1, p0, Landroid/media/AudioAttributes;->mFlags:I

    return p1
.end method

.method static synthetic access$300(Landroid/media/AudioAttributes;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioAttributes;

    .line 69
    iget-object v0, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$302(Landroid/media/AudioAttributes;Ljava/util/HashSet;)Ljava/util/HashSet;
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioAttributes;
    .param p1, "x1"    # Ljava/util/HashSet;

    .line 69
    iput-object p1, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    return-object p1
.end method

.method static synthetic access$502(Landroid/media/AudioAttributes;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioAttributes;
    .param p1, "x1"    # I

    .line 69
    iput p1, p0, Landroid/media/AudioAttributes;->mSource:I

    return p1
.end method

.method static synthetic access$602(Landroid/media/AudioAttributes;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioAttributes;
    .param p1, "x1"    # Ljava/lang/String;

    .line 69
    iput-object p1, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Landroid/media/AudioAttributes;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioAttributes;
    .param p1, "x1"    # Landroid/os/Bundle;

    .line 69
    iput-object p1, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$800(I)I
    .locals 1
    .param p0, "x0"    # I

    .line 69
    invoke-static {p0}, Landroid/media/AudioAttributes;->usageForStreamType(I)I

    move-result v0

    return v0
.end method

.method public static toLegacyStreamType(Landroid/media/AudioAttributes;)I
    .locals 1
    .param p0, "aa"    # Landroid/media/AudioAttributes;

    .line 1020
    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/media/AudioAttributes;->toVolumeStreamType(ZLandroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method private static toVolumeStreamType(ZLandroid/media/AudioAttributes;)I
    .locals 5
    .param p0, "fromGetVolumeControlStream"    # Z
    .param p1, "aa"    # Landroid/media/AudioAttributes;

    .line 1025
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 1026
    if-eqz p0, :cond_0

    .line 1027
    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    .line 1026
    :goto_0
    return v1

    .line 1029
    :cond_1
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v0

    const/4 v2, 0x4

    and-int/2addr v0, v2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_3

    .line 1030
    if-eqz p0, :cond_2

    .line 1031
    goto :goto_1

    :cond_2
    const/4 v3, 0x6

    .line 1030
    :goto_1
    return v3

    .line 1035
    :cond_3
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    const/4 v4, 0x3

    packed-switch v0, :pswitch_data_0

    .line 1063
    :pswitch_0
    if-nez p0, :cond_5

    .line 1067
    return v4

    .line 1042
    :pswitch_1
    return v1

    .line 1059
    :pswitch_2
    const/16 v0, 0xa

    return v0

    .line 1051
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 1057
    :pswitch_4
    const/4 v0, 0x5

    return v0

    .line 1049
    :pswitch_5
    return v2

    .line 1046
    :pswitch_6
    if-eqz p0, :cond_4

    .line 1047
    goto :goto_2

    :cond_4
    const/16 v3, 0x8

    .line 1046
    :goto_2
    return v3

    .line 1044
    :pswitch_7
    return v3

    .line 1040
    :pswitch_8
    return v4

    .line 1061
    :pswitch_9
    return v4

    .line 1064
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown usage value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " in audio attributes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_8
        :pswitch_1
        :pswitch_8
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method private static usageForStreamType(I)I
    .locals 1
    .param p0, "streamType"    # I

    .line 968
    const/4 v0, 0x2

    packed-switch p0, :pswitch_data_0

    .line 990
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 987
    :pswitch_1
    const/16 v0, 0xb

    return v0

    .line 985
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 983
    :pswitch_3
    return v0

    .line 981
    :pswitch_4
    const/4 v0, 0x5

    return v0

    .line 979
    :pswitch_5
    const/4 v0, 0x4

    return v0

    .line 977
    :pswitch_6
    const/4 v0, 0x1

    return v0

    .line 975
    :pswitch_7
    const/4 v0, 0x6

    return v0

    .line 973
    :pswitch_8
    const/16 v0, 0xd

    return v0

    .line 970
    :pswitch_9
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_8
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static usageToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "usage"    # I

    .line 916
    packed-switch p0, :pswitch_data_0

    .line 950
    :pswitch_0
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown usage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 948
    :pswitch_1
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_ASSISTANT"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 946
    :pswitch_2
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_GAME"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 944
    :pswitch_3
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_ASSISTANCE_SONIFICATION"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 942
    :pswitch_4
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_ASSISTANCE_NAVIGATION_GUIDANCE"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 940
    :pswitch_5
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_ASSISTANCE_ACCESSIBILITY"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 938
    :pswitch_6
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_NOTIFICATION_EVENT"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 936
    :pswitch_7
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_NOTIFICATION_COMMUNICATION_DELAYED"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 934
    :pswitch_8
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_NOTIFICATION_COMMUNICATION_INSTANT"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 932
    :pswitch_9
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_NOTIFICATION_COMMUNICATION_REQUEST"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 930
    :pswitch_a
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_NOTIFICATION_RINGTONE"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 928
    :pswitch_b
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_NOTIFICATION"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 926
    :pswitch_c
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_ALARM"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 924
    :pswitch_d
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_VOICE_COMMUNICATION_SIGNALLING"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 922
    :pswitch_e
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_VOICE_COMMUNICATION"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 920
    :pswitch_f
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_MEDIA"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 918
    :pswitch_10
    new-instance v0, Ljava/lang/String;

    const-string v1, "USAGE_UNKNOWN"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public contentTypeToString()Ljava/lang/String;
    .locals 3

    .line 956
    iget v0, p0, Landroid/media/AudioAttributes;->mContentType:I

    packed-switch v0, :pswitch_data_0

    .line 963
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown content type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/media/AudioAttributes;->mContentType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 962
    :pswitch_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "CONTENT_TYPE_SONIFICATION"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 961
    :pswitch_1
    new-instance v0, Ljava/lang/String;

    const-string v1, "CONTENT_TYPE_MOVIE"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 960
    :pswitch_2
    new-instance v0, Ljava/lang/String;

    const-string v1, "CONTENT_TYPE_MUSIC"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 959
    :pswitch_3
    new-instance v0, Ljava/lang/String;

    const-string v1, "CONTENT_TYPE_SPEECH"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 958
    :pswitch_4
    new-instance v0, Ljava/lang/String;

    const-string v1, "CONTENT_TYPE_UNKNOWN"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public describeContents()I
    .locals 1

    .line 775
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 862
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 863
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 865
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/media/AudioAttributes;

    .line 867
    .local v2, "that":Landroid/media/AudioAttributes;
    iget v3, p0, Landroid/media/AudioAttributes;->mContentType:I

    iget v4, v2, Landroid/media/AudioAttributes;->mContentType:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/AudioAttributes;->mFlags:I

    iget v4, v2, Landroid/media/AudioAttributes;->mFlags:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/AudioAttributes;->mSource:I

    iget v4, v2, Landroid/media/AudioAttributes;->mSource:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/media/AudioAttributes;->mUsage:I

    iget v4, v2, Landroid/media/AudioAttributes;->mUsage:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    iget-object v4, v2, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    .line 872
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 867
    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 863
    .end local v2    # "that":Landroid/media/AudioAttributes;
    :cond_3
    :goto_1
    return v1
.end method

.method public getAllFlags()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 430
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    and-int/lit16 v0, v0, 0x3ff

    return v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 440
    iget-object v0, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 441
    iget-object v0, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    return-object v0

    .line 443
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public getCapturePreset()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 410
    iget v0, p0, Landroid/media/AudioAttributes;->mSource:I

    return v0
.end method

.method public getContentType()I
    .locals 1

    .line 391
    iget v0, p0, Landroid/media/AudioAttributes;->mContentType:I

    return v0
.end method

.method public getFlags()I
    .locals 1

    .line 419
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    and-int/lit16 v0, v0, 0x111

    return v0
.end method

.method public getTags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 453
    iget-object v0, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getUsage()I
    .locals 1

    .line 399
    iget v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    return v0
.end method

.method public getVolumeControlStream()I
    .locals 1

    .line 1009
    const/4 v0, 0x1

    invoke-static {v0, p0}, Landroid/media/AudioAttributes;->toVolumeStreamType(ZLandroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 877
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/AudioAttributes;->mContentType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioAttributes;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioAttributes;->mSource:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioAttributes;->mUsage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 882
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioAttributes: usage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->usageToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " content="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->contentTypeToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/media/AudioAttributes;->mFlags:I

    .line 885
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " tags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " bundle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    iget-object v2, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    if-nez v2, :cond_0

    const-string/jumbo v2, "null"

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 882
    return-object v0
.end method

.method public usageToString()Ljava/lang/String;
    .locals 1

    .line 911
    iget v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    invoke-static {v0}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 796
    iget v0, p0, Landroid/media/AudioAttributes;->mUsage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 797
    iget v0, p0, Landroid/media/AudioAttributes;->mContentType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 798
    iget v0, p0, Landroid/media/AudioAttributes;->mSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 799
    iget v0, p0, Landroid/media/AudioAttributes;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 800
    and-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 801
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_0

    .line 802
    iget-object v0, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 803
    .local v0, "tagsArray":[Ljava/lang/String;
    iget-object v1, p0, Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 804
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 805
    .end local v0    # "tagsArray":[Ljava/lang/String;
    goto :goto_0

    :cond_0
    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 806
    iget-object v0, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 808
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_2

    .line 809
    const/16 v0, -0x7b9

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 811
    :cond_2
    const/16 v0, 0x7bc

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 812
    iget-object v0, p0, Landroid/media/AudioAttributes;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 814
    :goto_1
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 8
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 892
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 894
    .local v0, "token":J
    iget v2, p0, Landroid/media/AudioAttributes;->mUsage:I

    const-wide v3, 0x10e00000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 895
    iget v2, p0, Landroid/media/AudioAttributes;->mContentType:I

    const-wide v3, 0x10e00000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 896
    iget v2, p0, Landroid/media/AudioAttributes;->mFlags:I

    const-wide v3, 0x10500000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 898
    iget-object v2, p0, Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 899
    .local v5, "t":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 900
    const-string v6, ""

    if-eq v5, v6, :cond_0

    .line 901
    const-wide v6, 0x20900000004L

    invoke-virtual {p1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 898
    .end local v5    # "t":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 906
    :cond_1
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 907
    return-void
.end method
