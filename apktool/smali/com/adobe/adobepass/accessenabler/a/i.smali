.class public final Lcom/adobe/adobepass/accessenabler/a/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean p2, p0, Lcom/adobe/adobepass/accessenabler/a/i;->b:Z

    .line 43
    iput-object p1, p0, Lcom/adobe/adobepass/accessenabler/a/i;->a:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/adobe/adobepass/accessenabler/a/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/adobe/adobepass/accessenabler/a/i;->b:Z

    return v0
.end method
