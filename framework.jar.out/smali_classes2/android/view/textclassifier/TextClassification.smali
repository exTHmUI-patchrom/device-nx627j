.class public final Landroid/view/textclassifier/TextClassification;
.super Ljava/lang/Object;
.source "TextClassification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextClassification$Options;,
        Landroid/view/textclassifier/TextClassification$Request;,
        Landroid/view/textclassifier/TextClassification$Builder;,
        Landroid/view/textclassifier/TextClassification$IntentType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textclassifier/TextClassification;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Landroid/view/textclassifier/TextClassification;

.field private static final LOG_TAG:Ljava/lang/String; = "TextClassification"

.field private static final MAX_LEGACY_ICON_SIZE:I = 0xc0


# instance fields
.field private final mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

.field private final mId:Ljava/lang/String;

.field private final mLegacyIcon:Landroid/graphics/drawable/Drawable;

.field private final mLegacyIntent:Landroid/content/Intent;

.field private final mLegacyLabel:Ljava/lang/String;

.field private final mLegacyOnClickListener:Landroid/view/View$OnClickListener;

.field private final mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 107
    new-instance v0, Landroid/view/textclassifier/TextClassification$Builder;

    invoke-direct {v0}, Landroid/view/textclassifier/TextClassification$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification$Builder;->build()Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    sput-object v0, Landroid/view/textclassifier/TextClassification;->EMPTY:Landroid/view/textclassifier/TextClassification;

    .line 669
    new-instance v0, Landroid/view/textclassifier/TextClassification$1;

    invoke-direct {v0}, Landroid/view/textclassifier/TextClassification$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/TextClassification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 683
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassification;->mText:Ljava/lang/String;

    .line 684
    sget-object v0, Landroid/app/RemoteAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassification;->mActions:Ljava/util/List;

    .line 685
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 686
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mActions:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/RemoteAction;

    .line 687
    .local v0, "action":Landroid/app/RemoteAction;
    invoke-virtual {v0}, Landroid/app/RemoteAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-static {v3}, Landroid/view/textclassifier/TextClassification;->maybeLoadDrawable(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/view/textclassifier/TextClassification;->mLegacyIcon:Landroid/graphics/drawable/Drawable;

    .line 688
    invoke-virtual {v0}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/view/textclassifier/TextClassification;->mLegacyLabel:Ljava/lang/String;

    .line 689
    iget-object v3, p0, Landroid/view/textclassifier/TextClassification;->mActions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/RemoteAction;

    invoke-virtual {v2}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-static {v2}, Landroid/view/textclassifier/TextClassification;->createIntentOnClickListener(Landroid/app/PendingIntent;)Landroid/view/View$OnClickListener;

    move-result-object v2

    iput-object v2, p0, Landroid/view/textclassifier/TextClassification;->mLegacyOnClickListener:Landroid/view/View$OnClickListener;

    .line 690
    .end local v0    # "action":Landroid/app/RemoteAction;
    goto :goto_0

    .line 691
    :cond_0
    iput-object v1, p0, Landroid/view/textclassifier/TextClassification;->mLegacyIcon:Landroid/graphics/drawable/Drawable;

    .line 692
    iput-object v1, p0, Landroid/view/textclassifier/TextClassification;->mLegacyLabel:Ljava/lang/String;

    .line 693
    iput-object v1, p0, Landroid/view/textclassifier/TextClassification;->mLegacyOnClickListener:Landroid/view/View$OnClickListener;

    .line 695
    :goto_0
    iput-object v1, p0, Landroid/view/textclassifier/TextClassification;->mLegacyIntent:Landroid/content/Intent;

    .line 696
    sget-object v0, Landroid/view/textclassifier/EntityConfidence;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/EntityConfidence;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassification;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    .line 697
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassification;->mId:Ljava/lang/String;

    .line 698
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/textclassifier/TextClassification$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/view/textclassifier/TextClassification$1;

    .line 102
    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextClassification;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/Intent;Landroid/view/View$OnClickListener;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "legacyIcon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "legacyLabel"    # Ljava/lang/String;
    .param p4, "legacyIntent"    # Landroid/content/Intent;
    .param p5, "legacyOnClickListener"    # Landroid/view/View$OnClickListener;
    .param p8, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "Landroid/view/View$OnClickListener;",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 138
    .local p6, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/RemoteAction;>;"
    .local p7, "entityConfidence":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Float;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Landroid/view/textclassifier/TextClassification;->mText:Ljava/lang/String;

    .line 140
    iput-object p2, p0, Landroid/view/textclassifier/TextClassification;->mLegacyIcon:Landroid/graphics/drawable/Drawable;

    .line 141
    iput-object p3, p0, Landroid/view/textclassifier/TextClassification;->mLegacyLabel:Ljava/lang/String;

    .line 142
    iput-object p4, p0, Landroid/view/textclassifier/TextClassification;->mLegacyIntent:Landroid/content/Intent;

    .line 143
    iput-object p5, p0, Landroid/view/textclassifier/TextClassification;->mLegacyOnClickListener:Landroid/view/View$OnClickListener;

    .line 144
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassification;->mActions:Ljava/util/List;

    .line 145
    new-instance v0, Landroid/view/textclassifier/EntityConfidence;

    invoke-direct {v0, p7}, Landroid/view/textclassifier/EntityConfidence;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Landroid/view/textclassifier/TextClassification;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    .line 146
    iput-object p8, p0, Landroid/view/textclassifier/TextClassification;->mId:Ljava/lang/String;

    .line 147
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/Intent;Landroid/view/View$OnClickListener;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Landroid/view/textclassifier/TextClassification$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Landroid/graphics/drawable/Drawable;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Landroid/content/Intent;
    .param p5, "x4"    # Landroid/view/View$OnClickListener;
    .param p6, "x5"    # Ljava/util/List;
    .param p7, "x6"    # Ljava/util/Map;
    .param p8, "x7"    # Ljava/lang/String;
    .param p9, "x8"    # Landroid/view/textclassifier/TextClassification$1;

    .line 102
    invoke-direct/range {p0 .. p8}, Landroid/view/textclassifier/TextClassification;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/content/Intent;Landroid/view/View$OnClickListener;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static createIntentOnClickListener(Landroid/app/PendingIntent;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "intent"    # Landroid/app/PendingIntent;

    .line 271
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    new-instance v0, Landroid/view/textclassifier/-$$Lambda$TextClassification$ysasaE5ZkXkkzjVWIJ06GTV92-g;

    invoke-direct {v0, p0}, Landroid/view/textclassifier/-$$Lambda$TextClassification$ysasaE5ZkXkkzjVWIJ06GTV92-g;-><init>(Landroid/app/PendingIntent;)V

    return-object v0
.end method

.method public static createPendingIntent(Landroid/content/Context;Landroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .line 291
    const/high16 v0, 0x8000000

    .line 292
    .local v0, "flags":I
    invoke-static {p1, p0}, Landroid/view/textclassifier/TextClassification;->getIntentType(Landroid/content/Intent;Landroid/content/Context;)I

    move-result v1

    const/high16 v2, 0x8000000

    packed-switch v1, :pswitch_data_0

    .line 298
    const/4 v1, 0x0

    return-object v1

    .line 296
    :pswitch_0
    invoke-static {p0, p2, p1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1

    .line 294
    :pswitch_1
    invoke-static {p0, p2, p1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getIntentType(Landroid/content/Intent;Landroid/content/Context;)I
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "context"    # Landroid/content/Context;

    .line 304
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 305
    if-eqz p0, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 307
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 308
    .local v2, "activityRI":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_3

    .line 309
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 310
    return v1

    .line 312
    :cond_2
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v3, v3, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 313
    .local v3, "exported":Z
    if-eqz v3, :cond_3

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {p1, v4}, Landroid/view/textclassifier/TextClassification;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 314
    return v1

    .line 318
    .end local v3    # "exported":Z
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p0, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 319
    .local v1, "serviceRI":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_5

    .line 320
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 321
    return v0

    .line 323
    :cond_4
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-boolean v3, v3, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 324
    .restart local v3    # "exported":Z
    if-eqz v3, :cond_5

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-static {p1, v4}, Landroid/view/textclassifier/TextClassification;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 325
    return v0

    .line 329
    .end local v3    # "exported":Z
    :cond_5
    const/4 v0, -0x1

    return v0
.end method

.method private static hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .line 333
    if-eqz p1, :cond_1

    .line 334
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 333
    :goto_1
    return v0
.end method

.method static synthetic lambda$createIntentOnClickListener$0(Landroid/app/PendingIntent;Landroid/view/View;)V
    .locals 3
    .param p0, "intent"    # Landroid/app/PendingIntent;
    .param p1, "v"    # Landroid/view/View;

    .line 274
    :try_start_0
    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    goto :goto_0

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v1, "TextClassification"

    const-string v2, "Error sending PendingIntent"

    invoke-static {v1, v2, v0}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 278
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_0
    return-void
.end method

.method private static maybeLoadDrawable(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0, "icon"    # Landroid/graphics/drawable/Icon;

    .line 703
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 704
    return-object v0

    .line 706
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    .line 718
    return-object v0

    .line 710
    :cond_1
    new-instance v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 711
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {v1, v0, v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 710
    return-object v1

    .line 713
    :cond_2
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 714
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 716
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataBytes()[B

    move-result-object v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataOffset()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getDataLength()I

    move-result v4

    .line 715
    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 713
    return-object v0

    .line 708
    :cond_3
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 657
    const/4 v0, 0x0

    return v0
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mActions:Ljava/util/List;

    return-object v0
.end method

.method public getConfidenceScore(Ljava/lang/String;)F
    .locals 1
    .param p1, "entity"    # Ljava/lang/String;

    .line 184
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    invoke-virtual {v0, p1}, Landroid/view/textclassifier/EntityConfidence;->getConfidenceScore(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getEntity(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 174
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    invoke-virtual {v0}, Landroid/view/textclassifier/EntityConfidence;->getEntities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEntityCount()I
    .locals 1

    .line 162
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    invoke-virtual {v0}, Landroid/view/textclassifier/EntityConfidence;->getEntities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 206
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mLegacyIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 255
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 234
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mLegacyIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 220
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mLegacyLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 247
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mLegacyOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 260
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "TextClassification {text=%s, entities=%s, actions=%s, id=%s}"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Landroid/view/textclassifier/TextClassification;->mText:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Landroid/view/textclassifier/TextClassification;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, p0, Landroid/view/textclassifier/TextClassification;->mActions:Ljava/util/List;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-object v3, p0, Landroid/view/textclassifier/TextClassification;->mId:Ljava/lang/String;

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 662
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 664
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mActions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 665
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    invoke-virtual {v0, p1, p2}, Landroid/view/textclassifier/EntityConfidence;->writeToParcel(Landroid/os/Parcel;I)V

    .line 666
    iget-object v0, p0, Landroid/view/textclassifier/TextClassification;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 667
    return-void
.end method
