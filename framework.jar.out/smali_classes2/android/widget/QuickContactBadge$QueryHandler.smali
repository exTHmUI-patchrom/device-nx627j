.class Landroid/widget/QuickContactBadge$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "QuickContactBadge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/QuickContactBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/QuickContactBadge;


# direct methods
.method public constructor <init>(Landroid/widget/QuickContactBadge;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .line 339
    iput-object p1, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    .line 340
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 341
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 9
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .line 345
    const/4 v0, 0x0

    .line 346
    .local v0, "lookupUri":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 347
    .local v1, "createUri":Landroid/net/Uri;
    const/4 v2, 0x0

    .line 348
    .local v2, "trigger":Z
    if-eqz p2, :cond_0

    move-object v3, p2

    check-cast v3, Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 350
    .local v3, "extras":Landroid/os/Bundle;
    :goto_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_4

    .line 352
    :pswitch_0
    const/4 v2, 0x1

    .line 356
    :try_start_0
    const-string/jumbo v7, "uri_content"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 357
    .local v7, "ssp":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 358
    const-string/jumbo v8, "tel"

    invoke-static {v8, v7, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object v1, v6

    .line 358
    .end local v7    # "ssp":Ljava/lang/String;
    goto :goto_1

    .line 373
    :pswitch_1
    const/4 v2, 0x1

    .line 374
    const-string/jumbo v7, "mailto"

    const-string/jumbo v8, "uri_content"

    .line 375
    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 374
    invoke-static {v7, v8, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object v1, v6

    goto :goto_2

    .line 388
    :catchall_0
    move-exception v4

    goto :goto_3

    .line 364
    :cond_1
    :goto_1
    :pswitch_2
    if-eqz p3, :cond_3

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 365
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 366
    .local v5, "contactId":J
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 367
    .local v4, "lookupKey":Ljava/lang/String;
    invoke-static {v5, v6, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    move-object v0, v7

    .line 368
    .end local v4    # "lookupKey":Ljava/lang/String;
    .end local v5    # "contactId":J
    goto :goto_4

    .line 379
    :goto_2
    :pswitch_3
    if-eqz p3, :cond_3

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 380
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 381
    .restart local v5    # "contactId":J
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 382
    .restart local v4    # "lookupKey":Ljava/lang/String;
    invoke-static {v5, v6, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v7

    .line 382
    .end local v4    # "lookupKey":Ljava/lang/String;
    .end local v5    # "contactId":J
    goto :goto_4

    .line 388
    :goto_3
    if-eqz p3, :cond_2

    .line 389
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v4

    .line 388
    :cond_3
    :goto_4
    if-eqz p3, :cond_4

    .line 389
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 393
    :cond_4
    iget-object v4, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-static {v4, v0}, Landroid/widget/QuickContactBadge;->access$002(Landroid/widget/QuickContactBadge;Landroid/net/Uri;)Landroid/net/Uri;

    .line 394
    iget-object v4, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-static {v4}, Landroid/widget/QuickContactBadge;->access$100(Landroid/widget/QuickContactBadge;)V

    .line 396
    if-eqz v2, :cond_5

    iget-object v4, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-static {v4}, Landroid/widget/QuickContactBadge;->access$000(Landroid/widget/QuickContactBadge;)Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 398
    iget-object v4, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    iget-object v6, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-static {v6}, Landroid/widget/QuickContactBadge;->access$000(Landroid/widget/QuickContactBadge;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    iget-object v7, v7, Landroid/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    iget-object v8, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    .line 399
    invoke-static {v8}, Landroid/widget/QuickContactBadge;->access$200(Landroid/widget/QuickContactBadge;)Ljava/lang/String;

    move-result-object v8

    .line 398
    invoke-static {v4, v5, v6, v7, v8}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 400
    :cond_5
    if-eqz v1, :cond_7

    .line 402
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v4, v5, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 403
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_6

    .line 404
    const-string/jumbo v5, "uri_content"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v4, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 407
    :cond_6
    iget-object v5, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-virtual {v5}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 409
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_7
    :goto_5
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
