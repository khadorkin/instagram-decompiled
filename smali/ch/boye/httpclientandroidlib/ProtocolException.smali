.class public Lch/boye/httpclientandroidlib/ProtocolException;
.super Lch/boye/httpclientandroidlib/HttpException;
.source "ProtocolException.java"


# static fields
.field private static final serialVersionUID:J = -0x1dbf7e88f4e951c2L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/HttpException;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/HttpException;-><init>(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/HttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    return-void
.end method
