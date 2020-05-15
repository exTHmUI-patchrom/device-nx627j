.class public abstract Landroid/util/KeyValueSettingObserver;
.super Ljava/lang/Object;
.source "KeyValueSettingObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/KeyValueSettingObserver$SettingObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyValueSettingObserver"


# instance fields
.field private final mObserver:Landroid/database/ContentObserver;

.field private final mParser:Landroid/util/KeyValueListParser;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSettingUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "resolver"    # Landroid/content/ContentResolver;
    .param p3, "uri"    # Landroid/net/Uri;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, Landroid/util/KeyValueSettingObserver;->mParser:Landroid/util/KeyValueListParser;

    .line 50
    new-instance v0, Landroid/util/KeyValueSettingObserver$SettingObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/util/KeyValueSettingObserver$SettingObserver;-><init>(Landroid/util/KeyValueSettingObserver;Landroid/os/Handler;Landroid/util/KeyValueSettingObserver$1;)V

    iput-object v0, p0, Landroid/util/KeyValueSettingObserver;->mObserver:Landroid/database/ContentObserver;

    .line 51
    iput-object p2, p0, Landroid/util/KeyValueSettingObserver;->mResolver:Landroid/content/ContentResolver;

    .line 52
    iput-object p3, p0, Landroid/util/KeyValueSettingObserver;->mSettingUri:Landroid/net/Uri;

    .line 53
    return-void
.end method

.method static synthetic access$100(Landroid/util/KeyValueSettingObserver;)V
    .locals 0
    .param p0, "x0"    # Landroid/util/KeyValueSettingObserver;

    .line 39
    invoke-direct {p0}, Landroid/util/KeyValueSettingObserver;->setParserValue()V

    return-void
.end method

.method static synthetic access$200(Landroid/util/KeyValueSettingObserver;)Landroid/util/KeyValueListParser;
    .locals 1
    .param p0, "x0"    # Landroid/util/KeyValueSettingObserver;

    .line 39
    iget-object v0, p0, Landroid/util/KeyValueSettingObserver;->mParser:Landroid/util/KeyValueListParser;

    return-object v0
.end method

.method private setParserValue()V
    .locals 5

    .line 75
    iget-object v0, p0, Landroid/util/KeyValueSettingObserver;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0, v0}, Landroid/util/KeyValueSettingObserver;->getSettingValue(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "setting":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/util/KeyValueSettingObserver;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v1, v0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    goto :goto_0

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "KeyValueSettingObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed setting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void
.end method


# virtual methods
.method public abstract getSettingValue(Landroid/content/ContentResolver;)Ljava/lang/String;
.end method

.method public start()V
    .locals 4

    .line 57
    iget-object v0, p0, Landroid/util/KeyValueSettingObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/util/KeyValueSettingObserver;->mSettingUri:Landroid/net/Uri;

    iget-object v2, p0, Landroid/util/KeyValueSettingObserver;->mObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 58
    invoke-direct {p0}, Landroid/util/KeyValueSettingObserver;->setParserValue()V

    .line 59
    iget-object v0, p0, Landroid/util/KeyValueSettingObserver;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {p0, v0}, Landroid/util/KeyValueSettingObserver;->update(Landroid/util/KeyValueListParser;)V

    .line 60
    return-void
.end method

.method public stop()V
    .locals 2

    .line 64
    iget-object v0, p0, Landroid/util/KeyValueSettingObserver;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/util/KeyValueSettingObserver;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 65
    return-void
.end method

.method public abstract update(Landroid/util/KeyValueListParser;)V
.end method
