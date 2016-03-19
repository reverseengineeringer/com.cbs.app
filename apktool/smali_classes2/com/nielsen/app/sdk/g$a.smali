.class public final Lcom/nielsen/app/sdk/g$a;
.super Lcom/nielsen/app/sdk/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nielsen/app/sdk/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/nielsen/app/sdk/g;

.field private b:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>(Lcom/nielsen/app/sdk/g;)V
    .locals 1

    .prologue
    .line 107
    iput-object p1, p0, Lcom/nielsen/app/sdk/g$a;->a:Lcom/nielsen/app/sdk/g;

    invoke-direct {p0}, Lcom/nielsen/app/sdk/c;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nielsen/app/sdk/g$a;->b:Landroid/content/SharedPreferences$Editor;

    .line 108
    iget-object v0, p0, Lcom/nielsen/app/sdk/g$a;->b:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    .line 109
    invoke-static {p1}, Lcom/nielsen/app/sdk/g;->a(Lcom/nielsen/app/sdk/g;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/g$a;->b:Landroid/content/SharedPreferences$Editor;

    .line 110
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/nielsen/app/sdk/g$a;
    .locals 3

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "S"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1099
    const/4 v1, 0x1

    invoke-super {p0, v0, v1}, Lcom/nielsen/app/sdk/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2099
    const/4 v1, 0x0

    invoke-super {p0, p2, v1}, Lcom/nielsen/app/sdk/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 256
    iget-object v2, p0, Lcom/nielsen/app/sdk/g$a;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 257
    return-object p0
.end method

.method public final bridge synthetic a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    invoke-super {p0, p1, p2}, Lcom/nielsen/app/sdk/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/nielsen/app/sdk/g$a;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 322
    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    invoke-super {p0, p1, p2}, Lcom/nielsen/app/sdk/c;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
