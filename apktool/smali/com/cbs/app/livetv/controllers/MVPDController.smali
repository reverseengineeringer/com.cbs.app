.class public Lcom/cbs/app/livetv/controllers/MVPDController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adobe/adobepass/accessenabler/api/d;


# static fields
.field private static b:Lcom/cbs/app/livetv/controllers/MVPDController;


# instance fields
.field a:Lcom/cbs/app/androiddata/ResponseModelListener;

.field private c:Lcom/adobe/adobepass/accessenabler/api/a;

.field private d:Lcom/cbs/app/view/model/MVPDConfig;

.field private e:Ljava/lang/String;

.field private f:Landroid/content/Context;

.field private g:Lcom/cbs/app/livetv/callbacks/MVPDCallbacks;

.field private h:Z

.field private i:J

.field private j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/adobepass/accessenabler/a/g;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cbs/app/view/model/MVPDConfig;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/cbs/app/androiddata/ResponseModelListener;

.field private m:Landroid/os/Handler;

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v3, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->e:Ljava/lang/String;

    .line 56
    iput-boolean v2, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->h:Z

    .line 58
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->i:J

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->k:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Lcom/cbs/app/livetv/controllers/MVPDController$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/livetv/controllers/MVPDController$1;-><init>(Lcom/cbs/app/livetv/controllers/MVPDController;)V

    iput-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->l:Lcom/cbs/app/androiddata/ResponseModelListener;

    .line 106
    new-instance v0, Lcom/cbs/app/livetv/controllers/MVPDController$2;

    invoke-direct {v0, p0}, Lcom/cbs/app/livetv/controllers/MVPDController$2;-><init>(Lcom/cbs/app/livetv/controllers/MVPDController;)V

    iput-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->m:Landroid/os/Handler;

    .line 116
    new-instance v0, Lcom/cbs/app/livetv/controllers/MVPDController$3;

    invoke-direct {v0, p0}, Lcom/cbs/app/livetv/controllers/MVPDController$3;-><init>(Lcom/cbs/app/livetv/controllers/MVPDController;)V

    iput-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->a:Lcom/cbs/app/androiddata/ResponseModelListener;

    .line 155
    iput-boolean v2, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->p:Z

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->f:Landroid/content/Context;

    .line 160
    iput-object v3, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->n:Ljava/lang/String;

    .line 162
    :try_start_0
    invoke-static {p1}, Lcom/adobe/adobepass/accessenabler/api/a$a;->a(Landroid/content/Context;)Lcom/adobe/adobepass/accessenabler/api/a;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->c:Lcom/adobe/adobepass/accessenabler/api/a;

    .line 163
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->c:Lcom/adobe/adobepass/accessenabler/api/a;

    invoke-virtual {v0, p0}, Lcom/adobe/adobepass/accessenabler/api/a;->a(Lcom/adobe/adobepass/accessenabler/api/d;)V
    :try_end_0
    .catch Lcom/adobe/adobepass/accessenabler/api/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    const-string v1, "MVPDController"

    const-string v2, "Failed to initialize the AccessEnabler library. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/cbs/app/livetv/controllers/MVPDController;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 170
    const-class v1, Lcom/cbs/app/livetv/controllers/MVPDController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cbs/app/livetv/controllers/MVPDController;->b:Lcom/cbs/app/livetv/controllers/MVPDController;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Lcom/cbs/app/livetv/controllers/MVPDController;

    invoke-direct {v0, p0}, Lcom/cbs/app/livetv/controllers/MVPDController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cbs/app/livetv/controllers/MVPDController;->b:Lcom/cbs/app/livetv/controllers/MVPDController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :cond_0
    monitor-exit v1

    return-void

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/cbs/app/livetv/controllers/MVPDController;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/cbs/app/livetv/controllers/MVPDController;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 344
    if-nez p1, :cond_0

    .line 345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->p:Z

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->g:Lcom/cbs/app/livetv/callbacks/MVPDCallbacks;

    if-nez v0, :cond_1

    .line 351
    :goto_0
    return-void

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->g:Lcom/cbs/app/livetv/callbacks/MVPDCallbacks;

    invoke-interface {v0, p1}, Lcom/cbs/app/livetv/callbacks/MVPDCallbacks;->a(Z)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/cbs/app/livetv/controllers/MVPDController;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->j:Ljava/util/HashMap;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 355
    iput-object p1, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->n:Ljava/lang/String;

    .line 356
    invoke-direct {p0}, Lcom/cbs/app/livetv/controllers/MVPDController;->k()V

    .line 358
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->g:Lcom/cbs/app/livetv/callbacks/MVPDCallbacks;

    if-nez v0, :cond_0

    .line 368
    :goto_0
    return-void

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->n:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->g:Lcom/cbs/app/livetv/callbacks/MVPDCallbacks;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/cbs/app/livetv/callbacks/MVPDCallbacks;->b(Z)Z

    .line 367
    :goto_1
    iput-boolean v2, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->p:Z

    goto :goto_0

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->g:Lcom/cbs/app/livetv/callbacks/MVPDCallbacks;

    invoke-interface {v0, v2}, Lcom/cbs/app/livetv/callbacks/MVPDCallbacks;->b(Z)Z

    goto :goto_1
.end method

.method static synthetic c(Lcom/cbs/app/livetv/controllers/MVPDController;)Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->h:Z

    return v0
.end method

.method static synthetic d(Lcom/cbs/app/livetv/controllers/MVPDController;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 2185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2186
    iget-wide v4, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->i:J

    sub-long/2addr v2, v4

    .line 2188
    const-wide/32 v4, 0x493e0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 2198
    iget-object v1, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->g:Lcom/cbs/app/livetv/callbacks/MVPDCallbacks;

    if-eqz v1, :cond_0

    .line 2202
    invoke-direct {p0}, Lcom/cbs/app/livetv/controllers/MVPDController;->k()V

    .line 2203
    invoke-virtual {p0}, Lcom/cbs/app/livetv/controllers/MVPDController;->g()V

    .line 2204
    iget-object v1, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->g:Lcom/cbs/app/livetv/callbacks/MVPDCallbacks;

    iget-object v2, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->k:Ljava/util/ArrayList;

    invoke-interface {v1, v2, v0}, Lcom/cbs/app/livetv/callbacks/MVPDCallbacks;->a(Ljava/util/ArrayList;Z)Z

    .line 2190
    :cond_0
    :goto_0
    return v0

    .line 2193
    :cond_1
    const/4 v0, 0x0

    .line 36
    goto :goto_0
.end method

.method static synthetic e(Lcom/cbs/app/livetv/controllers/MVPDController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/cbs/app/livetv/controllers/MVPDController;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;
    .locals 4

    .prologue
    .line 177
    const-class v1, Lcom/cbs/app/livetv/controllers/MVPDController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cbs/app/livetv/controllers/MVPDController;->b:Lcom/cbs/app/livetv/controllers/MVPDController;

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/cbs/app/livetv/controllers/MVPDController;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was not initialized!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 181
    :cond_0
    :try_start_1
    sget-object v0, Lcom/cbs/app/livetv/controllers/MVPDController;->b:Lcom/cbs/app/livetv/controllers/MVPDController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 217
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->i:J

    .line 218
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->m:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 219
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 417
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->g:Lcom/cbs/app/livetv/callbacks/MVPDCallbacks;

    if-nez v0, :cond_0

    .line 421
    :goto_0
    return-void

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->g:Lcom/cbs/app/livetv/callbacks/MVPDCallbacks;

    iget-object v1, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->k:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/cbs/app/livetv/callbacks/MVPDCallbacks;->a(Ljava/util/ArrayList;Z)Z

    goto :goto_0
.end method

.method public final a(ILjava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 298
    packed-switch p1, :pswitch_data_0

    .line 333
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setAuthnStatus(): Unknown status code."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :pswitch_0
    iput-boolean v4, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->o:Z

    .line 302
    invoke-direct {p0, v4}, Lcom/cbs/app/livetv/controllers/MVPDController;->a(Z)V

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 306
    :pswitch_1
    iput-boolean v5, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->o:Z

    .line 307
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->c:Lcom/adobe/adobepass/accessenabler/api/a;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/api/a;->d()Lcom/adobe/adobepass/accessenabler/api/b;

    move-result-object v0

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/c/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 308
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Authentication FAILED: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " currentMvpdId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mSelectedMvpdId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->d:Lcom/cbs/app/view/model/MVPDConfig;

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", configurationCompleted = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->h:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 310
    invoke-direct {p0}, Lcom/cbs/app/livetv/controllers/MVPDController;->k()V

    .line 313
    const-string v0, "User Not Authenticated Error"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 317
    invoke-virtual {p0, v1}, Lcom/cbs/app/livetv/controllers/MVPDController;->setMVPDProviderToModifyAuth(Lcom/cbs/app/view/model/MVPDConfig;)V

    .line 318
    invoke-direct {p0, v5}, Lcom/cbs/app/livetv/controllers/MVPDController;->a(Z)V

    .line 329
    :cond_1
    :goto_2
    iput-object v1, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->d:Lcom/cbs/app/view/model/MVPDConfig;

    goto :goto_0

    .line 308
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->d:Lcom/cbs/app/view/model/MVPDConfig;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/MVPDConfig;->getAdobeId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 319
    :cond_3
    const-string v0, "Provider not Selected Error"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Internal Authentication Error"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    :cond_4
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->d:Lcom/cbs/app/view/model/MVPDConfig;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->h:Z

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->g:Lcom/cbs/app/livetv/callbacks/MVPDCallbacks;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->g:Lcom/cbs/app/livetv/callbacks/MVPDCallbacks;

    iget-object v2, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->k:Ljava/util/ArrayList;

    invoke-interface {v0, v2, v4}, Lcom/cbs/app/livetv/callbacks/MVPDCallbacks;->a(Ljava/util/ArrayList;Z)Z

    goto :goto_2

    .line 298
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/adobe/adobepass/accessenabler/a/d;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/adobepass/accessenabler/a/d;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 441
    invoke-virtual {p1}, Lcom/adobe/adobepass/accessenabler/a/d;->a()I

    move-result v0

    .line 443
    const-string v4, ""

    .line 447
    packed-switch v0, :pswitch_data_0

    .line 493
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setTrackingData(): Unknown event type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :pswitch_0
    const-string v2, "mvpd selection"

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "MVPD ID: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 497
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "DEVICE TYPE: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 498
    add-int/lit8 v1, v1, 0x1

    .line 499
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "CLIENT TYPE: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 500
    add-int/lit8 v1, v1, 0x1

    .line 501
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "OS: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "event: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    return-void

    .line 457
    :pswitch_1
    const-string v3, "authentication detection"

    .line 459
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, "true"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 460
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SUCCESSFUL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_0

    const-string v0, "YES"

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 462
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "MVPD ID: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "GUID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 466
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CACHED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v2

    move-object v2, v3

    .line 470
    goto/16 :goto_0

    .line 460
    :cond_0
    const-string v0, "NO"

    goto :goto_1

    .line 473
    :pswitch_2
    const-string v3, "authorization detection"

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "data size: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "SUCCESSFUL: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, "true"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "YES"

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 479
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "MVPD ID: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "GUID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CACHED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ERROR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ERROR DETAILS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 488
    const/4 v0, 0x6

    move-object v2, v3

    move-object v9, v1

    move v1, v0

    move-object v0, v9

    .line 490
    goto/16 :goto_0

    .line 477
    :cond_1
    const-string v0, "NO"

    goto/16 :goto_2

    .line 447
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/adobe/adobepass/accessenabler/a/e;Lcom/adobe/adobepass/accessenabler/a/f;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 511
    invoke-virtual {p1}, Lcom/adobe/adobepass/accessenabler/a/e;->a()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 577
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "setRequestor(): Unknown status code."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 522
    :pswitch_0
    const-string v1, "resource_id"

    invoke-virtual {p1, v1}, Lcom/adobe/adobepass/accessenabler/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 574
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 541
    :pswitch_2
    const-string v1, "user_metadata_name"

    invoke-virtual {p1, v1}, Lcom/adobe/adobepass/accessenabler/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 544
    const/4 v1, 0x0

    .line 546
    invoke-virtual {p2}, Lcom/adobe/adobepass/accessenabler/a/f;->a()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 547
    invoke-virtual {p2}, Lcom/adobe/adobepass/accessenabler/a/f;->b()Z

    move-result v3

    .line 548
    invoke-virtual {p2}, Lcom/adobe/adobepass/accessenabler/a/f;->a()Ljava/lang/Object;

    move-result-object v2

    .line 550
    if-eqz v3, :cond_4

    .line 552
    :try_start_0
    iget-object v1, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/cbs/app/adobepass/crypto/SignatureGenerator;->a(Landroid/content/res/Resources;)Lcom/cbs/app/adobepass/crypto/SignatureGenerator;

    move-result-object v6

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-virtual {v6, v1}, Lcom/cbs/app/adobepass/crypto/SignatureGenerator;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/adobepass/accessenabler/api/c; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v4, v2

    move-object v2, v1

    move v1, v3

    .line 561
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v3, "Key: "

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_1

    move-object v3, v5

    :goto_2
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\nEncrypted: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\nValue: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v4, :cond_2

    :goto_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 564
    if-eqz v1, :cond_0

    .line 565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\nValue decrypted: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v2, :cond_3

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 554
    :catch_0
    move-exception v1

    .line 555
    const-string v6, "MVPDController"

    invoke-virtual {v1}, Lcom/adobe/adobepass/accessenabler/api/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    move-object v7, v4

    move-object v4, v2

    move-object v2, v7

    .line 556
    goto :goto_1

    .line 561
    :cond_1
    const-string v3, "None"

    goto :goto_2

    :cond_2
    const-string v4, "None"

    goto :goto_3

    .line 565
    :cond_3
    const-string v2, "None"

    goto :goto_4

    :cond_4
    move v1, v3

    move-object v7, v4

    move-object v4, v2

    move-object v2, v7

    goto :goto_1

    :cond_5
    move-object v2, v4

    goto :goto_1

    .line 511
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Lcom/adobe/adobepass/accessenabler/a/g;)V
    .locals 4

    .prologue
    .line 407
    invoke-virtual {p1}, Lcom/adobe/adobepass/accessenabler/a/g;->a()Ljava/lang/String;

    move-result-object v0

    .line 408
    invoke-virtual {p1}, Lcom/adobe/adobepass/accessenabler/a/g;->b()Ljava/lang/String;

    move-result-object v1

    .line 410
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Selected MVPD"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const-string v0, "None"

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Selected MVPD name"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_1

    const-string v0, "None"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    return-void

    :cond_1
    move-object v0, v1

    .line 411
    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->g:Lcom/cbs/app/livetv/callbacks/MVPDCallbacks;

    if-nez v0, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    const-string v0, "/authenticate/saml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    .line 431
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->g:Lcom/cbs/app/livetv/callbacks/MVPDCallbacks;

    invoke-interface {v0, p1}, Lcom/cbs/app/livetv/callbacks/MVPDCallbacks;->a(Ljava/lang/String;)Z

    goto :goto_0

    .line 432
    :cond_2
    const-string v0, "/logout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->g:Lcom/cbs/app/livetv/callbacks/MVPDCallbacks;

    invoke-interface {v0, p1}, Lcom/cbs/app/livetv/callbacks/MVPDCallbacks;->b(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleSetToken: token "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": resourceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 378
    :cond_0
    const-string v0, "empty token"

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Authorization FAILED: Failed media token validation: Resource: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cbs/app/livetv/controllers/MVPDController;->b(Ljava/lang/String;)V

    .line 391
    :goto_0
    return-void

    .line 384
    :cond_1
    iput-object p1, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->e:Ljava/lang/String;

    .line 385
    new-instance v0, Lcom/cbs/app/service/MVPDService;

    invoke-direct {v0}, Lcom/cbs/app/service/MVPDService;-><init>()V

    .line 386
    iget-object v1, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->f:Landroid/content/Context;

    const-string v2, "70C7B4F3-E4B7-13C3-0A99-E1A1C2DE72CD"

    iget-object v6, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->a:Lcom/cbs/app/androiddata/ResponseModelListener;

    .line 1026
    const-string v3, "/mvpd/adobe/shortMediaToken.json"

    .line 1028
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1030
    const-string v4, "contentId"

    invoke-virtual {v5, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    :try_start_0
    const-string v2, "token"

    const-string v4, "UTF-8"

    invoke-static {p1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1037
    :goto_1
    const-string v2, "v3.0"

    const-string v4, "application/x-www-form-urlencoded"

    const-class v7, Lcom/cbs/app/view/model/rest/MVPDVerifyEndpointResponse;

    invoke-virtual/range {v0 .. v7}, Lcom/cbs/app/service/MVPDService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/cbs/app/androiddata/ResponseModelListener;Ljava/lang/Class;)V

    goto :goto_0

    .line 1034
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Authorization FAILED: For resource: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : ERROR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : ERROR DETAILS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cbs/app/livetv/controllers/MVPDController;->b(Ljava/lang/String;)V

    .line 401
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 227
    invoke-static {}, Lcom/adobe/adobepass/accessenabler/api/a;->k()V

    .line 229
    sget-object v1, Lcom/cbs/app/view/MainApplication;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/cbs/app/adobepass/crypto/SignatureGenerator;->a(Landroid/content/res/Resources;)Lcom/cbs/app/adobepass/crypto/SignatureGenerator;

    move-result-object v1

    const-string v2, "CBS"

    invoke-virtual {v1, v2}, Lcom/cbs/app/adobepass/crypto/SignatureGenerator;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "spUrls: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 238
    iget-object v2, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->c:Lcom/adobe/adobepass/accessenabler/api/a;

    const-string v3, "CBS"

    invoke-virtual {v2, v3, v1, v0}, Lcom/adobe/adobepass/accessenabler/api/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lcom/adobe/adobepass/accessenabler/api/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    const-string v1, "MVPDController"

    const-string v2, "Failed to digitally sign the requestor id."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->p:Z

    return v0
.end method

.method public final d()Z
    .locals 4

    .prologue
    .line 626
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->c:Lcom/adobe/adobepass/accessenabler/api/a;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/api/a;->d()Lcom/adobe/adobepass/accessenabler/api/b;

    move-result-object v0

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/c/b;->c()Ljava/lang/String;

    move-result-object v1

    .line 628
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/MVPDConfig;

    .line 629
    invoke-virtual {v0}, Lcom/cbs/app/view/model/MVPDConfig;->getAdobeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 630
    invoke-virtual {v0}, Lcom/cbs/app/view/model/MVPDConfig;->isForceUserRegFlow()Z

    move-result v0

    .line 634
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 638
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->o:Z

    .line 639
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->n:Ljava/lang/String;

    .line 640
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->c:Lcom/adobe/adobepass/accessenabler/api/a;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/api/a;->j()V

    .line 641
    return-void
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 645
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->d:Lcom/cbs/app/view/model/MVPDConfig;

    .line 646
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/cbs/app/livetv/controllers/MVPDController;->a(Z)V

    .line 647
    return-void
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 652
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->c:Lcom/adobe/adobepass/accessenabler/api/a;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/api/a;->d()Lcom/adobe/adobepass/accessenabler/api/b;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adobe/adobepass/accessenabler/api/b;->c:Z

    .line 653
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->c:Lcom/adobe/adobepass/accessenabler/api/a;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/api/a;->d()Lcom/adobe/adobepass/accessenabler/api/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/adobepass/accessenabler/api/b;->b(Z)V

    .line 654
    return-void
.end method

.method public getAuthZToken()Lcom/adobe/adobepass/accessenabler/a/b;
    .locals 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->c:Lcom/adobe/adobepass/accessenabler/api/a;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/api/a;->d()Lcom/adobe/adobepass/accessenabler/api/b;

    move-result-object v0

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    const-string v1, "CBS_ENTERTAINMENT"

    invoke-virtual {v0, v1}, Lcom/adobe/adobepass/accessenabler/c/b;->a(Ljava/lang/String;)Lcom/adobe/adobepass/accessenabler/a/b;

    move-result-object v0

    return-object v0
.end method

.method public getAuthentication()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->c:Lcom/adobe/adobepass/accessenabler/api/a;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/api/a;->h()V

    .line 249
    return-void
.end method

.method public getAuthenticationToken()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 589
    .line 1210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->i:J

    .line 1211
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->m:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1212
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->m:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 590
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->g:Lcom/cbs/app/livetv/callbacks/MVPDCallbacks;

    if-nez v0, :cond_0

    .line 595
    :goto_0
    return-void

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->g:Lcom/cbs/app/livetv/callbacks/MVPDCallbacks;

    invoke-interface {v0}, Lcom/cbs/app/livetv/callbacks/MVPDCallbacks;->a()Z

    .line 594
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->c:Lcom/adobe/adobepass/accessenabler/api/a;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/api/a;->i()V

    goto :goto_0
.end method

.method public getAuthorization()V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->c:Lcom/adobe/adobepass/accessenabler/api/a;

    const-string v1, "CBS_ENTERTAINMENT"

    invoke-virtual {v0, v1}, Lcom/adobe/adobepass/accessenabler/api/a;->a(Ljava/lang/String;)V

    .line 371
    return-void
.end method

.method public getCurrentMvpdId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 662
    iget-boolean v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->h:Z

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->c:Lcom/adobe/adobepass/accessenabler/api/a;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/api/a;->d()Lcom/adobe/adobepass/accessenabler/api/b;

    move-result-object v0

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/c/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 665
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMvpdIdForTracking()Ljava/lang/String;
    .locals 1

    .prologue
    .line 696
    .line 1711
    iget-boolean v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->o:Z

    .line 696
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cbs/app/livetv/controllers/MVPDController;->getCurrentMvpdId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 697
    invoke-virtual {p0}, Lcom/cbs/app/livetv/controllers/MVPDController;->getCurrentMvpdId()Ljava/lang/String;

    move-result-object v0

    .line 703
    :goto_0
    return-object v0

    .line 699
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelectedMvpdConfig()Lcom/cbs/app/view/model/MVPDConfig;
    .locals 4

    .prologue
    .line 676
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->d:Lcom/cbs/app/view/model/MVPDConfig;

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->d:Lcom/cbs/app/view/model/MVPDConfig;

    .line 690
    :goto_0
    return-object v0

    .line 679
    :cond_0
    invoke-virtual {p0}, Lcom/cbs/app/livetv/controllers/MVPDController;->getCurrentMvpdId()Ljava/lang/String;

    move-result-object v1

    .line 680
    if-eqz v1, :cond_2

    .line 682
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/MVPDConfig;

    .line 683
    invoke-virtual {v0}, Lcom/cbs/app/view/model/MVPDConfig;->getAdobeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 684
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "publisher name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cbs/app/view/model/MVPDConfig;->getAdobeDisplayNameOverride()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 690
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->c:Lcom/adobe/adobepass/accessenabler/api/a;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/api/a;->g()V

    .line 659
    return-void
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->n:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 711
    iget-boolean v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->o:Z

    return v0
.end method

.method public setMVPDCallbacks(Lcom/cbs/app/livetv/callbacks/MVPDCallbacks;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->g:Lcom/cbs/app/livetv/callbacks/MVPDCallbacks;

    .line 223
    return-void
.end method

.method public setMVPDProviderToModifyAuth(Lcom/cbs/app/view/model/MVPDConfig;)V
    .locals 2

    .prologue
    .line 613
    invoke-virtual {p0, p1}, Lcom/cbs/app/livetv/controllers/MVPDController;->setSelectedMVPDConfig(Lcom/cbs/app/view/model/MVPDConfig;)V

    .line 614
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->d:Lcom/cbs/app/view/model/MVPDConfig;

    if-eqz v0, :cond_0

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setMVPDProviderToModifyAuth: mvpdId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->d:Lcom/cbs/app/view/model/MVPDConfig;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/MVPDConfig;->getAdobeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", AccessEnabler current mvpdId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->c:Lcom/adobe/adobepass/accessenabler/api/a;

    invoke-virtual {v1}, Lcom/adobe/adobepass/accessenabler/api/a;->d()Lcom/adobe/adobepass/accessenabler/api/b;

    move-result-object v1

    iget-object v1, v1, Lcom/adobe/adobepass/accessenabler/api/b;->h:Lcom/adobe/adobepass/accessenabler/c/b;

    invoke-virtual {v1}, Lcom/adobe/adobepass/accessenabler/c/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->c:Lcom/adobe/adobepass/accessenabler/api/a;

    iget-object v1, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->d:Lcom/cbs/app/view/model/MVPDConfig;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/MVPDConfig;->getAdobeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/adobepass/accessenabler/api/a;->b(Ljava/lang/String;)V

    .line 617
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->p:Z

    .line 622
    :goto_0
    return-void

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->c:Lcom/adobe/adobepass/accessenabler/api/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/adobepass/accessenabler/api/a;->b(Ljava/lang/String;)V

    .line 620
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->p:Z

    goto :goto_0
.end method

.method public setRequestorComplete(I)V
    .locals 6

    .prologue
    .line 255
    packed-switch p1, :pswitch_data_0

    .line 290
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setRequestor(): Unknown status code."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :pswitch_0
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->c:Lcom/adobe/adobepass/accessenabler/api/a;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/api/a;->d()Lcom/adobe/adobepass/accessenabler/api/b;

    move-result-object v0

    iget-object v0, v0, Lcom/adobe/adobepass/accessenabler/api/b;->f:Lcom/adobe/adobepass/accessenabler/a/j;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/j;->d()Ljava/util/ArrayList;

    move-result-object v0

    .line 262
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->j:Ljava/util/HashMap;

    .line 264
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "items: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 267
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/adobepass/accessenabler/a/g;

    .line 268
    if-eqz v0, :cond_0

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mvpd: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/g;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    iget-object v2, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->j:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/adobe/adobepass/accessenabler/a/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    const-string v1, "MVPDController"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_1
    new-instance v0, Lcom/cbs/app/service/MVPDService;

    invoke-direct {v0}, Lcom/cbs/app/service/MVPDService;-><init>()V

    iget-object v1, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->f:Landroid/content/Context;

    iget-object v4, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->l:Lcom/cbs/app/androiddata/ResponseModelListener;

    .line 1021
    const-string v3, "/mvpd/configs.json"

    .line 1022
    const-string v2, "v3.0"

    const-class v5, Lcom/cbs/app/view/model/rest/MVPDConfigsEndpointResponse;

    invoke-virtual/range {v0 .. v5}, Lcom/cbs/app/service/MVPDService;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cbs/app/androiddata/ResponseModelListener;Ljava/lang/Class;)V

    .line 288
    :goto_1
    return-void

    .line 286
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->h:Z

    goto :goto_1

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setSelectedMVPDConfig(Lcom/cbs/app/view/model/MVPDConfig;)V
    .locals 2

    .prologue
    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setSelectedMVPDConfig() called with: selectedMvpdConfig = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    iput-object p1, p0, Lcom/cbs/app/livetv/controllers/MVPDController;->d:Lcom/cbs/app/view/model/MVPDConfig;

    .line 605
    return-void
.end method
