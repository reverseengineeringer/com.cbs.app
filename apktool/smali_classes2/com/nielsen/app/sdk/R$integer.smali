.class public final Lcom/nielsen/app/sdk/R$integer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nielsen/app/sdk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "integer"
.end annotation


# static fields
.field public static google_play_services_version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 421
    const/high16 v0, 0x7f070000

    sput v0, Lcom/nielsen/app/sdk/R$integer;->google_play_services_version:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
