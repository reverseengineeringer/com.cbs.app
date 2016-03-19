.class final Lnet/hockeyapp/android/FeedbackActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hockeyapp/android/FeedbackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/hockeyapp/android/c/d;

.field final synthetic b:Lnet/hockeyapp/android/FeedbackActivity;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/FeedbackActivity;Lnet/hockeyapp/android/c/d;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->b:Lnet/hockeyapp/android/FeedbackActivity;

    iput-object p2, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->a:Lnet/hockeyapp/android/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 346
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->b:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->a(Z)V

    .line 348
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 349
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v0, "d MMM h:mm a"

    invoke-direct {v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->a:Lnet/hockeyapp/android/c/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->a:Lnet/hockeyapp/android/c/d;

    invoke-virtual {v0}, Lnet/hockeyapp/android/c/d;->b()Lnet/hockeyapp/android/c/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->a:Lnet/hockeyapp/android/c/d;

    invoke-virtual {v0}, Lnet/hockeyapp/android/c/d;->b()Lnet/hockeyapp/android/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lnet/hockeyapp/android/c/b;->a()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->a:Lnet/hockeyapp/android/c/d;

    invoke-virtual {v0}, Lnet/hockeyapp/android/c/d;->b()Lnet/hockeyapp/android/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lnet/hockeyapp/android/c/b;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 356
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->b:Lnet/hockeyapp/android/FeedbackActivity;

    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->a:Lnet/hockeyapp/android/c/d;

    invoke-virtual {v3}, Lnet/hockeyapp/android/c/d;->b()Lnet/hockeyapp/android/c/b;

    move-result-object v3

    invoke-virtual {v3}, Lnet/hockeyapp/android/c/b;->a()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v0, v3}, Lnet/hockeyapp/android/FeedbackActivity;->a(Lnet/hockeyapp/android/FeedbackActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 358
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->b:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-static {v0}, Lnet/hockeyapp/android/FeedbackActivity;->e(Lnet/hockeyapp/android/FeedbackActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 362
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->b:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-static {v0}, Lnet/hockeyapp/android/FeedbackActivity;->e(Lnet/hockeyapp/android/FeedbackActivity;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/hockeyapp/android/c/c;

    invoke-virtual {v0}, Lnet/hockeyapp/android/c/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 363
    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->b:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-static {v1}, Lnet/hockeyapp/android/FeedbackActivity;->f(Lnet/hockeyapp/android/FeedbackActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v3, "Last Updated: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :goto_0
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->b:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-static {v0}, Lnet/hockeyapp/android/FeedbackActivity;->g(Lnet/hockeyapp/android/FeedbackActivity;)Lnet/hockeyapp/android/a/a;

    move-result-object v0

    if-nez v0, :cond_1

    .line 370
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->b:Lnet/hockeyapp/android/FeedbackActivity;

    new-instance v1, Lnet/hockeyapp/android/a/a;

    iget-object v2, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->b:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-static {v2}, Lnet/hockeyapp/android/FeedbackActivity;->c(Lnet/hockeyapp/android/FeedbackActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->b:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-static {v3}, Lnet/hockeyapp/android/FeedbackActivity;->e(Lnet/hockeyapp/android/FeedbackActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lnet/hockeyapp/android/a/a;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lnet/hockeyapp/android/FeedbackActivity;->a(Lnet/hockeyapp/android/FeedbackActivity;Lnet/hockeyapp/android/a/a;)Lnet/hockeyapp/android/a/a;

    .line 381
    :goto_1
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->b:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-static {v0}, Lnet/hockeyapp/android/FeedbackActivity;->h(Lnet/hockeyapp/android/FeedbackActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->b:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-static {v1}, Lnet/hockeyapp/android/FeedbackActivity;->g(Lnet/hockeyapp/android/FeedbackActivity;)Lnet/hockeyapp/android/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 383
    :cond_0
    return-void

    .line 366
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0

    .line 373
    :cond_1
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->b:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-static {v0}, Lnet/hockeyapp/android/FeedbackActivity;->g(Lnet/hockeyapp/android/FeedbackActivity;)Lnet/hockeyapp/android/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lnet/hockeyapp/android/a/a;->a()V

    .line 374
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->b:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-static {v0}, Lnet/hockeyapp/android/FeedbackActivity;->e(Lnet/hockeyapp/android/FeedbackActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/hockeyapp/android/c/c;

    .line 375
    iget-object v2, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->b:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-static {v2}, Lnet/hockeyapp/android/FeedbackActivity;->g(Lnet/hockeyapp/android/FeedbackActivity;)Lnet/hockeyapp/android/a/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnet/hockeyapp/android/a/a;->a(Lnet/hockeyapp/android/c/c;)V

    goto :goto_2

    .line 378
    :cond_2
    iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity$4;->b:Lnet/hockeyapp/android/FeedbackActivity;

    invoke-static {v0}, Lnet/hockeyapp/android/FeedbackActivity;->g(Lnet/hockeyapp/android/FeedbackActivity;)Lnet/hockeyapp/android/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lnet/hockeyapp/android/a/a;->notifyDataSetChanged()V

    goto :goto_1
.end method
