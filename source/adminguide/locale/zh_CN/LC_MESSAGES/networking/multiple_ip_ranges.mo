��          T       �       �      �   �  �   �   .  6   �  D   0  8  u  �  �     �  �  �  �   �	  .    
  E   O
    �
   About Multiple IP Ranges CloudStack provides you with the flexibility to add guest IP ranges from different subnets in Basic zones and security groups-enabled Advanced zones. For security groups-enabled Advanced zones, it implies multiple subnets can be added to the same VLAN. With the addition of this feature, you will be able to add IP address ranges from the same subnet or from a different one when IP address are exhausted. This would in turn allows you to employ higher number of subnets and thus reduce the address management overhead. To support this feature, the capability of ``createVlanIpRange`` API is extended to add IP ranges also from a different subnet. Ensure that you manually configure the gateway of the new subnet before adding the IP range. Note that CloudStack supports only one gateway for a subnet; overlapping subnets are not currently supported. The feature can only be implemented on IPv4 addresses. This feature is supported on KVM, xenServer, and VMware hypervisors. Use the ``deleteVlanRange`` API to delete IP ranges. This operation fails if an IP from the remove range is in use. If the remove range contains the IP address on which the DHCP server is running, CloudStack acquires a new IP from the same subnet. If no IP is available in the subnet, the remove operation fails. Project-Id-Version: Apache CloudStack Administration RTD
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2014-06-30 12:52+0200
PO-Revision-Date: 2014-06-30 12:06+0000
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language-Team: Chinese (China) (http://www.transifex.com/projects/p/apache-cloudstack-administration-rtd/language/zh_CN/)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: zh_CN
Plural-Forms: nplurals=1; plural=0;
 关于多IP范围 在基础区域以及高级区域的开启安全组，CloudStack能够让你从不同的子网添加来宾IP范围。对于高级区域的开启安全组，多个子网可被加至同一个VLAN。随着此功能的增加，当IP地址耗尽时，你能够从同一个子网或从不同的子网添加IP范围。这会允许你添加更多的子网，因此减少了了地址管理的问题。为支持这一特性，创建VLANIP范围的API被加以扩展，这样就能从不同的子网添加IP范围 确实在添加IP范围前，手动配置了子网的网关。注意，CloudStack仅支持一个子网有一个网关。不支持重叠的子网。 这些功能仅能在IPV4的地址是实现。 在KVM, xenServer以及VMware虚拟机中，都支持这项功能。  使用删除VLAN范围的API删除IP范围。如果拟删除的IP在被使用时，此操作会失败。如果删除的范围包含DHCP服务器拟分配的IP地址CloudStack会从同一个子网下获取新的IP。如果在子网内没有可供利用的IP时，删除操作会失败。 