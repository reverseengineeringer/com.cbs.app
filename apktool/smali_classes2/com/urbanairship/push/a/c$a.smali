.class public final Lcom/urbanairship/push/a/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/push/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Z

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/push/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/NotificationCompat$Action$Extender;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput v0, p0, Lcom/urbanairship/push/a/c$a;->b:I

    .line 189
    iput v0, p0, Lcom/urbanairship/push/a/c$a;->c:I

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/urbanairship/push/a/c$a;->d:Z

    .line 201
    iput-object p1, p0, Lcom/urbanairship/push/a/c$a;->a:Ljava/lang/String;

    .line 202
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/urbanairship/push/a/c$a;
    .locals 0

    .prologue
    .line 212
    iput p1, p0, Lcom/urbanairship/push/a/c$a;->b:I

    .line 213
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/urbanairship/push/a/c$a;
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/urbanairship/push/a/c$a;->g:Ljava/lang/String;

    .line 225
    return-object p0
.end method

.method public final a(Z)Lcom/urbanairship/push/a/c$a;
    .locals 0

    .prologue
    .line 250
    iput-boolean p1, p0, Lcom/urbanairship/push/a/c$a;->d:Z

    .line 251
    return-object p0
.end method

.method public final a()Lcom/urbanairship/push/a/c;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 291
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    iget v0, p0, Lcom/urbanairship/push/a/c$a;->c:I

    invoke-direct {v1, v0, v2, v2}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 292
    iget-object v0, p0, Lcom/urbanairship/push/a/c$a;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/urbanairship/push/a/c$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/NotificationCompat$Action$Extender;

    .line 294
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->extend(Landroid/support/v4/app/NotificationCompat$Action$Extender;)Landroid/support/v4/app/NotificationCompat$Action$Builder;

    goto :goto_0

    .line 298
    :cond_0
    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v5

    .line 300
    new-instance v0, Lcom/urbanairship/push/a/c;

    iget-object v1, p0, Lcom/urbanairship/push/a/c$a;->a:Ljava/lang/String;

    iget v2, v5, Landroid/support/v4/app/NotificationCompat$Action;->icon:I

    iget v3, p0, Lcom/urbanairship/push/a/c$a;->b:I

    iget-object v4, p0, Lcom/urbanairship/push/a/c$a;->g:Ljava/lang/String;

    invoke-virtual {v5}, Landroid/support/v4/app/NotificationCompat$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    iget-boolean v6, p0, Lcom/urbanairship/push/a/c$a;->d:Z

    iget-object v7, p0, Lcom/urbanairship/push/a/c$a;->e:Ljava/util/List;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/urbanairship/push/a/c;-><init>(Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;ZLjava/util/List;B)V

    return-object v0
.end method

.method public final b(I)Lcom/urbanairship/push/a/c$a;
    .locals 0

    .prologue
    .line 238
    iput p1, p0, Lcom/urbanairship/push/a/c$a;->c:I

    .line 239
    return-object p0
.end method
