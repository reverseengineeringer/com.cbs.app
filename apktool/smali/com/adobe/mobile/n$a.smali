.class final Lcom/adobe/mobile/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/mobile/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/mobile/n$a$a;,
        Lcom/adobe/mobile/n$a$b;,
        Lcom/adobe/mobile/n$a$c;
    }
.end annotation


# instance fields
.field private final a:Lcom/adobe/mobile/n;


# direct methods
.method public constructor <init>(Lcom/adobe/mobile/n;)V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Lcom/adobe/mobile/n$a;->a:Lcom/adobe/mobile/n;

    .line 140
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 218
    :try_start_0
    invoke-static {}, Lcom/adobe/mobile/am;->u()Landroid/app/Activity;
    :try_end_0
    .catch Lcom/adobe/mobile/am$a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 226
    :try_start_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 227
    iget-object v0, p0, Lcom/adobe/mobile/n$a;->a:Lcom/adobe/mobile/n;

    iget-object v0, v0, Lcom/adobe/mobile/n;->k:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 228
    iget-object v0, p0, Lcom/adobe/mobile/n$a;->a:Lcom/adobe/mobile/n;

    iget-object v0, v0, Lcom/adobe/mobile/n;->l:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 230
    iget-object v0, p0, Lcom/adobe/mobile/n$a;->a:Lcom/adobe/mobile/n;

    iget-object v0, v0, Lcom/adobe/mobile/n;->n:Ljava/lang/String;

    new-instance v2, Lcom/adobe/mobile/n$a$c;

    iget-object v3, p0, Lcom/adobe/mobile/n$a;->a:Lcom/adobe/mobile/n;

    invoke-direct {v2, v3}, Lcom/adobe/mobile/n$a$c;-><init>(Lcom/adobe/mobile/n;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 231
    iget-object v0, p0, Lcom/adobe/mobile/n$a;->a:Lcom/adobe/mobile/n;

    iget-object v0, v0, Lcom/adobe/mobile/n;->o:Ljava/lang/String;

    new-instance v2, Lcom/adobe/mobile/n$a$b;

    iget-object v3, p0, Lcom/adobe/mobile/n$a;->a:Lcom/adobe/mobile/n;

    invoke-direct {v2, v3}, Lcom/adobe/mobile/n$a$b;-><init>(Lcom/adobe/mobile/n;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 232
    new-instance v0, Lcom/adobe/mobile/n$a$a;

    iget-object v2, p0, Lcom/adobe/mobile/n$a;->a:Lcom/adobe/mobile/n;

    invoke-direct {v0, v2}, Lcom/adobe/mobile/n$a$a;-><init>(Lcom/adobe/mobile/n;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 234
    iget-object v0, p0, Lcom/adobe/mobile/n$a;->a:Lcom/adobe/mobile/n;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/mobile/n;->p:Landroid/app/AlertDialog;

    .line 235
    iget-object v0, p0, Lcom/adobe/mobile/n$a;->a:Lcom/adobe/mobile/n;

    iget-object v0, v0, Lcom/adobe/mobile/n;->p:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 236
    iget-object v0, p0, Lcom/adobe/mobile/n$a;->a:Lcom/adobe/mobile/n;

    iget-object v0, v0, Lcom/adobe/mobile/n;->p:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 238
    iget-object v0, p0, Lcom/adobe/mobile/n$a;->a:Lcom/adobe/mobile/n;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adobe/mobile/n;->f:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 243
    :goto_0
    return-void

    .line 221
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/adobe/mobile/am$a;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 240
    :catch_1
    move-exception v0

    .line 241
    const-string v1, "Messages - Could not show alert message (%s)"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
